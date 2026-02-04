function handleResponsiveLayout() {
    const width = window.innerWidth;
    const sidebar = document.querySelector('.sidebar');
    // Top Bar might be inside .main-content or direct child depending on page
    const topBar = document.querySelector('.top-bar') || document.querySelector('.evaluate-header');

    // Support various containers
    const container = document.querySelector('.dashboard-container') || document.querySelector('.evaluate-page-container');

    if (!sidebar || !topBar) return;

    if (width <= 1024) {
        // Mobile Mode: Move Sidebar AFTER TopBar
        // We want strict order: TopBar -> Sidebar -> Content

        if (!sidebar.classList.contains('mobile-mode')) {
            sidebar.classList.add('mobile-mode');

            // Insert Sidebar after TopBar
            // Note: In dashboard.php, top-bar is inside main-content. 
            // We need to move sidebar inside main-content just after top-bar
            if (topBar.parentNode) {
                topBar.parentNode.insertBefore(sidebar, topBar.nextSibling);
            }

            // Hide hamburger if it exists
            const hamburger = document.querySelector('.hamburger-menu');
            if (hamburger) hamburger.style.display = 'none';
        }
    } else {
        // Desktop Mode: Return Sidebar to original Container
        if (sidebar.classList.contains('mobile-mode')) {
            sidebar.classList.remove('mobile-mode');

            // Move back to main container (first child usually)
            if (container && container.firstElementChild !== sidebar) {
                container.insertBefore(sidebar, container.firstElementChild);
            }

            const hamburger = document.querySelector('.hamburger-menu');
            if (hamburger) hamburger.style.display = '';
        }
    }
}

// Run on load and resize
document.addEventListener('DOMContentLoaded', handleResponsiveLayout);
window.addEventListener('resize', handleResponsiveLayout);
