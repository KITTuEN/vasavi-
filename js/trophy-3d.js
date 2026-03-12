document.addEventListener('DOMContentLoaded', () => {
    const container = document.getElementById('trophy-canvas');
    if (!container) return;

    // Wait for the container to become visible (if it's hidden during fetching)
    const observer = new MutationObserver(() => {
        if (container.offsetWidth > 0) {
            initTrophy();
            observer.disconnect();
        }
    });

    // Check if parent #winnerDetails becomes visible
    const winnerDetails = document.getElementById('winnerDetails');
    if (winnerDetails) {
        observer.observe(winnerDetails, { attributes: true, attributeFilter: ['style'] });
    }

    function initTrophy() {
        const width = container.clientWidth || 120;
        const height = container.clientHeight || 120;

        const scene = new THREE.Scene();
        const camera = new THREE.PerspectiveCamera(45, width / height, 0.1, 100);
        camera.position.z = 10;

        const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
        renderer.setSize(width, height);
        renderer.setPixelRatio(window.devicePixelRatio);
        container.appendChild(renderer.domElement);

        // Lighting
        const ambientLight = new THREE.AmbientLight(0xffffff, 0.7);
        scene.add(ambientLight);

        const pointLight = new THREE.PointLight(0xffd700, 1.5, 50);
        pointLight.position.set(5, 5, 5);
        scene.add(pointLight);

        const goldMaterial = new THREE.MeshPhongMaterial({
            color: 0xffd700,
            specular: 0xffffff,
            shininess: 100,
            metal: true
        });

        // Trophy Group
        const trophy = new THREE.Group();

        // 1. Base
        const baseGeo = new THREE.CylinderGeometry(1.5, 2, 0.5, 32);
        const base = new THREE.Mesh(baseGeo, goldMaterial);
        base.position.y = -3;
        trophy.add(base);

        // 2. Stem
        const stemGeo = new THREE.CylinderGeometry(0.3, 0.5, 1.5, 32);
        const stem = new THREE.Mesh(stemGeo, goldMaterial);
        stem.position.y = -2;
        trophy.add(stem);

        // 3. Bowl
        const bowlGeo = new THREE.CylinderGeometry(2, 0.5, 3, 32);
        const bowl = new THREE.Mesh(bowlGeo, goldMaterial);
        bowl.position.y = 0.25;
        trophy.add(bowl);

        // 4. Handles (Torus)
        const handleGeo = new THREE.TorusGeometry(1, 0.15, 16, 50, Math.PI);

        const handleL = new THREE.Mesh(handleGeo, goldMaterial);
        handleL.position.set(-1.5, 0.5, 0);
        handleL.rotation.z = Math.PI / 2;
        trophy.add(handleL);

        const handleR = new THREE.Mesh(handleGeo, goldMaterial);
        handleR.position.set(1.5, 0.5, 0);
        handleR.rotation.z = -Math.PI / 2;
        trophy.add(handleR);

        scene.add(trophy);

        // Animation
        function animate() {
            requestAnimationFrame(animate);
            trophy.rotation.y += 0.02;

            // Subtle bounce
            trophy.position.y = Math.sin(Date.now() * 0.002) * 0.2;

            renderer.render(scene, camera);
        }

        animate();

        // Resize handler
        window.addEventListener('resize', () => {
            const newW = container.clientWidth;
            const newH = container.clientHeight;
            camera.aspect = newW / newH;
            camera.updateProjectionMatrix();
            renderer.setSize(newW, newH);
        });
    }
});
