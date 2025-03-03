document.addEventListener("DOMContentLoaded", function(){
    const passageContainer = document.getElementById("passage-container");
    if (passageContainer) {
        // Convert <w> tags to <span class="word"> for better styling and interactivity.
        const wElements = passageContainer.querySelectorAll("w");
        wElements.forEach(function(wEl) {
            const span = document.createElement("span");
            span.className = "word";
            span.innerHTML = wEl.innerHTML;
            // Copy all attributes from <w> to <span>
            Array.from(wEl.attributes).forEach(function(attr) {
                span.setAttribute(attr.name, attr.value);
            });
            wEl.parentNode.replaceChild(span, wEl);
        });
    }
    
    const wordElements = document.querySelectorAll("#passage-container .word, #passage-container w");
    console.log("Found", wordElements.length, "word elements");
    
    // Build tooltips and store them in data-tippy-content.
    wordElements.forEach(function(wordEl) {
        const wordText = wordEl.textContent.trim();
        const lemma = wordEl.getAttribute("savlm") || "No lemma data";
        // Use <br> for line breaks in the tooltip.
        const tooltipHTML = `Word: ${wordText}<br>Lemma: ${lemma}`;
        // Remove native title attribute and use data-tippy-content.
        wordEl.removeAttribute('title');
        wordEl.setAttribute("data-tippy-content", tooltipHTML);
    });
    
    // Initialize Tippy.js with custom theme.
    tippy(wordElements, {
        content(reference) {
            return reference.getAttribute('data-tippy-content');
        },
        allowHTML: true,
        theme: 'apple',
        placement: 'top',
        delay: [100, 50],
    });
});
