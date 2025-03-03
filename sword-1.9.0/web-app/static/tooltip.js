document.addEventListener("DOMContentLoaded", function() {
    const passageContainer = document.getElementById("passage-container");
    if (passageContainer) {
      const wElements = passageContainer.querySelectorAll("w");
      wElements.forEach(wEl => {
        const span = document.createElement("span");
        span.className = "word";
        // Copy attributes
        Array.from(wEl.attributes).forEach(attr => {
          span.setAttribute(attr.name, attr.value);
        });
        // Move child nodes
        while (wEl.firstChild) {
          span.appendChild(wEl.firstChild);
        }
        wEl.parentNode.replaceChild(span, wEl);
      });
    }

    // Select all word elements
    const wordElements = document.querySelectorAll("#passage-container .word, #passage-container w");
    console.log("Found", wordElements.length, "word elements");

    wordElements.forEach(function(wordEl) {
        // Basic displayed text
        const wordText = wordEl.textContent.trim();
        // The raw savlm attribute, e.g. "strong:G3588 lemma.TR:..."
        const savlm = wordEl.getAttribute("savlm") || "";

        // Parse out the first Strong's ID (e.g., "G3588" or "H07225")
        let definition = "";
        const match = savlm.match(/strong:([GH]\d+)/);
        if (match) {
            const id = match[1]; // e.g. "G3588" or "H07225"
            // Check which dictionary to use
            if (id.startsWith("G")) {
                // Greek dictionary lookup
                if (window.strongsGreekDictionary && strongsGreekDictionary[id]) {
                    const entry = strongsGreekDictionary[id];
                    definition = `${entry.kjv_def} (${entry.lemma})`;
                } else {
                    definition = "Definition not found in Greek dictionary.";
                }
            } else if (id.startsWith("H")) {
                // Hebrew dictionary lookup
                if (window.strongsHebrewDictionary && strongsHebrewDictionary[id]) {
                    const entry = strongsHebrewDictionary[id];
                    definition = `${entry.kjv_def} (${entry.lemma})`;
                } else {
                    definition = "Definition not found in Hebrew dictionary.";
                }
            }
        }

        // Build the tooltip content, including the dictionary definition if found
        const tooltipHTML = `
            <strong>Word:</strong> ${wordText}<br>
            <strong>Strongs:</strong> ${savlm}<br>
            <strong>Definition:</strong> ${definition || "No definition"}
        `.trim();

        // Store this in data-tippy-content so Tippy can show it on hover
        wordEl.removeAttribute('title');
        wordEl.setAttribute("data-tippy-content", tooltipHTML);
    });
    
    // Initialize Tippy.js for interactive tooltips on all word elements
    tippy(wordElements, {
        content(reference) {
            return reference.getAttribute('data-tippy-content');
        },
        allowHTML: true,
        theme: 'apple',
        placement: 'top',
        delay: [100, 50],
        appendTo: () => document.body, // <-- Force Tippy to append to body
    });
});
