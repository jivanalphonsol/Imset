(function () {
    var overlay, frame, titleEl, fullBtn, dlBtn, loading, lastFocus;

    function init() {
        overlay = document.getElementById('pdfPreviewModal');
        if (!overlay) return false;
        // Re-parent to <body> so no transformed/animated ancestor can break position:fixed or stacking
        document.body.appendChild(overlay);
        frame = document.getElementById('pdfModalFrame');
        titleEl = document.getElementById('pdfModalTitle');
        fullBtn = document.getElementById('pdfModalFullscreen');
        dlBtn = document.getElementById('pdfModalDownload');
        loading = document.getElementById('pdfModalLoading');
        frame.addEventListener('load', function () { if (frame.getAttribute('src')) loading.classList.add('hide'); });
        overlay.addEventListener('click', function (e) { if (e.target === overlay) closePdfModal(); });
        document.getElementById('pdfModalClose').addEventListener('click', closePdfModal);
        document.addEventListener('keydown', function (e) { if (e.key === 'Escape') closePdfModal(); });
        return true;
    }

    function openPdfModal(url, title) {
        lastFocus = document.activeElement;
        titleEl.textContent = title || 'PDF Preview';
        fullBtn.href = url;
        dlBtn.href = url;
        loading.classList.remove('hide');
        frame.src = url;
        overlay.classList.add('active');
        document.body.style.overflow = 'hidden';
    }

    function closePdfModal() {
        if (!overlay || !overlay.classList.contains('active')) return;
        overlay.classList.remove('active');
        document.body.style.overflow = '';
        frame.removeAttribute('src');
        if (lastFocus && lastFocus.focus) lastFocus.focus();
    }

    function ready() {
        if (!init()) return;
        // Delegated: any link with class js-pdf opens in the modal (falls back to a normal link without JS)
        document.addEventListener('click', function (e) {
            var a = e.target.closest ? e.target.closest('a.js-pdf') : null;
            if (!a) return;
            e.preventDefault();
            openPdfModal(a.getAttribute('href'), a.getAttribute('data-title'));
        });
    }

    if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', ready); else ready();
})();
