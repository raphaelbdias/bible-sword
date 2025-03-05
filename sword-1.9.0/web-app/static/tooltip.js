document.addEventListener("DOMContentLoaded", function() {
  const passageContainer = document.getElementById("bible-text");
  if (passageContainer) {
    const wElements = passageContainer.querySelectorAll("w");
    wElements.forEach(wEl => {
      const span = document.createElement("span");
      span.className = "word";
      Array.from(wEl.attributes).forEach(attr => {
        span.setAttribute(attr.name, attr.value);
      });
      while (wEl.firstChild) {
        span.appendChild(wEl.firstChild);
      }
      wEl.parentNode.replaceChild(span, wEl);
    });
  }

  const wordElements = document.querySelectorAll("#bible-text .word, #bible-text w");
  wordElements.forEach(function(wordEl) {
    const wordText = wordEl.textContent.trim();
    // Try to get data from savlm, then fall back to lemma
    const strongsData = wordEl.getAttribute("savlm") || wordEl.getAttribute("lemma") || "";
    let definition = "";
    let lemma = "";
    let pron = "";
    let xlit = "";
    let derivation = "";
    let strongs_def = "";
    
    const match = strongsData.match(/strong:([GH]\d+)/);
    if (match) {
      const id = match[1];
      if (id.startsWith("G")) {
        if (window.strongsGreekDictionary && strongsGreekDictionary[id]) {
          const entry = strongsGreekDictionary[id];
          definition = entry.kjv_def || "";
          lemma = entry.lemma || "";
          pron = entry.pron || "";
          translit = entry.translit || "";
          derivation = entry.derivation || "";
          strongs_def = entry.strongs_def || "";
        } else {
          definition = "Definition not found in Greek dictionary.";
        }
      } else if (id.startsWith("H")) {
        if (window.strongsHebrewDictionary && strongsHebrewDictionary[id]) {
          const entry = strongsHebrewDictionary[id];
          definition = entry.kjv_def || "";
          lemma = entry.lemma || "";
          pron = entry.pron || "";
          translit = entry.xlit || "";
          derivation = entry.derivation || "";
          strongs_def = entry.strongs_def || "";
        } else {
          definition = "Definition not found in Hebrew dictionary.";
        }
      }
    }
    const tooltipHTML = `
      <strong>Word:</strong> ${wordText}<br>
      <strong>Strongs:</strong> ${strongsData}<br>
      <strong>Definition:</strong> ${definition || "No definition"}<br>
      <strong>Lemma:</strong> ${lemma || "No lemma"}<br>
      <strong>Pronunciation:</strong> ${pron || "No pronunciation"}<br>
      <strong>Transliterations:</strong> ${translit || "No transliteration"}<br>
      <strong>Derivation:</strong> ${derivation || "No derivation"}<br>
      <strong>Strong's Def:</strong> ${strongs_def || "No Strong's definition"}<br>
    `.trim();
    wordEl.removeAttribute('title');
    wordEl.setAttribute("data-tippy-content", tooltipHTML);
  });
  
  tippy(document.querySelectorAll("#bible-text .word, #bible-text w"), {
    content(reference) {
      return reference.getAttribute('data-tippy-content');
    },
    allowHTML: true,
    theme: 'apple',
    placement: 'top',
    delay: [100, 50],
    appendTo: () => document.body,
  });
});
