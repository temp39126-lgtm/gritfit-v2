document.addEventListener('DOMContentLoaded', function() {
    const menuToggle = document.querySelector('.menu-toggle');
    const navLinks = document.querySelector('.nav-links');
    const navOverlay = document.querySelector('.nav-overlay');

    if (menuToggle) {
        menuToggle.addEventListener('click', function() {
            this.classList.toggle('active');
            navLinks.classList.toggle('active');
            navOverlay.classList.toggle('active');
            document.body.style.overflow = navLinks.classList.contains('active') ? 'hidden' : '';
        });
    }
    if (navOverlay) {
        navOverlay.addEventListener('click', function() {
            menuToggle.classList.remove('active');
            navLinks.classList.remove('active');
            navOverlay.classList.remove('active');
            document.body.style.overflow = '';
        });
    }

    // Mobile dropdown
    document.querySelectorAll('.has-dropdown > a').forEach(function(link) {
        link.addEventListener('click', function(e) {
            if (window.innerWidth <= 768) {
                e.preventDefault();
                this.parentElement.classList.toggle('open');
            }
        });
    });

    // Scroll animations
    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                entry.target.classList.add('animate-in');
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1, rootMargin: '0px 0px -50px 0px' });

    document.querySelectorAll('.product-card, .review-card, .feature-item, .product-item, .usp-item').forEach(function(el) {
        el.style.opacity = '0';
        el.style.transform = 'translateY(30px)';
        observer.observe(el);
    });

    // Hero slider / carousel
    document.querySelectorAll('.hero-slider').forEach(function(slider) {
        var slides = slider.querySelectorAll('.slide');
        if (slides.length === 0) return;
        var dots = slider.querySelectorAll('.slider-dots button');
        var current = 0;
        var timer = null;
        var INTERVAL = parseInt(slider.getAttribute('data-interval'), 10);
        if (!INTERVAL || INTERVAL < 1000) INTERVAL = 5500;

        var slidesTrack = slider.querySelector('.slides');

        function syncSlidesHeight() {
            if (!slidesTrack) return;
            var active = slides[current];
            if (active && active.classList.contains('slide--graphic')) {
                var img = active.querySelector('img');
                var apply = function() {
                    if (!img) {
                        slidesTrack.style.height = 'auto';
                        return;
                    }
                    slidesTrack.style.height = img.getBoundingClientRect().height + 'px';
                };
                if (img && img.complete && img.naturalWidth) {
                    requestAnimationFrame(apply);
                } else if (img) {
                    img.addEventListener('load', function() { requestAnimationFrame(apply); }, { once: true });
                } else slidesTrack.style.height = 'auto';
            } else {
                var cs = getComputedStyle(slider);
                var varName = slider.classList.contains('banner-slider') ? '--banner-h' : '--slider-h';
                var fallback = slider.classList.contains('banner-slider') ? '380px' : '460px';
                var h = cs.getPropertyValue(varName).trim() || fallback;
                slidesTrack.style.height = /^\d+$/.test(h) ? h + 'px' : h;
            }
        }

        function show(n) {
            slides[current].classList.remove('active');
            if (dots[current]) dots[current].classList.remove('active');
            current = (n + slides.length) % slides.length;
            slides[current].classList.add('active');
            if (dots[current]) dots[current].classList.add('active');
            syncSlidesHeight();
        }
        function next() { show(current + 1); }
        function prev() { show(current - 1); }
        function start() { if (slides.length > 1) timer = setInterval(next, INTERVAL); }
        function restart() { clearInterval(timer); start(); }

        var nextBtn = slider.querySelector('.slider-arrow.next');
        var prevBtn = slider.querySelector('.slider-arrow.prev');
        if (nextBtn) nextBtn.addEventListener('click', function() { next(); restart(); });
        if (prevBtn) prevBtn.addEventListener('click', function() { prev(); restart(); });
        dots.forEach(function(dot, idx) {
            dot.addEventListener('click', function() { show(idx); restart(); });
        });

        slider.addEventListener('mouseenter', function() { clearInterval(timer); });
        slider.addEventListener('mouseleave', start);

        // Swipe support (touch devices)
        var startX = null;
        slider.addEventListener('touchstart', function(e) { startX = e.touches[0].clientX; }, { passive: true });
        slider.addEventListener('touchend', function(e) {
            if (startX === null) return;
            var dx = e.changedTouches[0].clientX - startX;
            if (Math.abs(dx) > 50) { dx < 0 ? next() : prev(); restart(); }
            startX = null;
        }, { passive: true });

        slider.querySelectorAll('.slide--graphic img').forEach(function(img) {
            img.addEventListener('load', syncSlidesHeight, { once: true });
        });
        window.addEventListener('resize', syncSlidesHeight);
        syncSlidesHeight();
        start();
    });
});
