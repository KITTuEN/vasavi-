document.addEventListener('DOMContentLoaded', () => {
    // Scene setup
    const container = document.getElementById('canvas-container');
    if (!container) return;

    const scene = new THREE.Scene();
    scene.fog = new THREE.FogExp2(0xffffff, 0.002); // White fog for depth

    const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
    camera.position.z = 30;

    const renderer = new THREE.WebGLRenderer({ alpha: true, antialias: true });
    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.setPixelRatio(window.devicePixelRatio);
    container.appendChild(renderer.domElement);

    // Lights - Brighter and softer for professional look
    const ambientLight = new THREE.AmbientLight(0xffffff, 0.8);
    scene.add(ambientLight);

    const dirLight = new THREE.DirectionalLight(0xe0e7ff, 0.8); // Soft indigo/white
    dirLight.position.set(20, 20, 20);
    scene.add(dirLight);

    const dirLight2 = new THREE.DirectionalLight(0xe0e7ff, 0.5);
    dirLight2.position.set(-20, -10, 10);
    scene.add(dirLight2);

    // Geometric Shapes (The "Models") - Clean, modern looking
    const geometries = [
        new THREE.IcosahedronGeometry(1, 0),
        new THREE.OctahedronGeometry(1, 0),
        new THREE.TetrahedronGeometry(1, 0),
        new THREE.TorusGeometry(0.8, 0.2, 16, 100)
    ];

    // Professional Material - Soft blue/gray, matte/glossy mix
    const material = new THREE.MeshPhongMaterial({
        color: 0xf1f5f9, // Very light slate
        emissive: 0x000000,
        specular: 0x6366f1, // Blue specular highlight
        shininess: 30,
        flatShading: true,
        transparent: false,
        opacity: 0.9
    });

    // Accent Material
    const accentMaterial = new THREE.MeshPhongMaterial({
        color: 0x4f46e5, // Primary indigo
        flatShading: true,
        transparent: true,
        opacity: 0.6
    });

    const particles = [];
    const particleCount = 40;

    for (let i = 0; i < particleCount; i++) {
        const geometry = geometries[Math.floor(Math.random() * geometries.length)];
        // Mix of main and accent materials
        const mat = Math.random() > 0.8 ? accentMaterial : material;
        const mesh = new THREE.Mesh(geometry, mat);

        mesh.position.x = (Math.random() - 0.5) * 80;
        mesh.position.y = (Math.random() - 0.5) * 60;
        mesh.position.z = (Math.random() - 0.5) * 40;

        mesh.rotation.x = Math.random() * Math.PI;
        mesh.rotation.y = Math.random() * Math.PI;

        const scale = Math.random() * 1.5 + 0.5;
        mesh.scale.set(scale, scale, scale);

        // Custom properties for animation
        mesh.userData = {
            rotationSpeed: {
                x: (Math.random() - 0.5) * 0.01,
                y: (Math.random() - 0.5) * 0.01
            },
            floatSpeed: (Math.random() - 0.5) * 0.02,
            initialY: mesh.position.y,
            randomOffset: Math.random() * 100
        };

        scene.add(mesh);
        particles.push(mesh);
    }

    // Gentle floating lines or grid - very subtle
    const gridHelper = new THREE.GridHelper(200, 50, 0xe2e8f0, 0xe2e8f0);
    gridHelper.position.y = -20;
    gridHelper.material.transparent = true;
    gridHelper.material.opacity = 0.3;
    scene.add(gridHelper);


    // Animation Loop
    let time = 0;
    function animate() {
        requestAnimationFrame(animate);
        time += 0.002; // Slower, calmer animation

        // Animate particles
        particles.forEach(p => {
            p.rotation.x += p.userData.rotationSpeed.x;
            p.rotation.y += p.userData.rotationSpeed.y;
            // Gentle bobbing
            p.position.y = p.userData.initialY + Math.sin(time + p.userData.randomOffset) * 2;
        });

        // Rotate grid slightly
        gridHelper.rotation.y = Math.sin(time * 0.1) * 0.05;

        // Camera gentle movement
        camera.position.x = Math.sin(time * 0.2) * 2;
        camera.position.y = Math.cos(time * 0.2) * 2;
        camera.lookAt(0, 0, 0);

        renderer.render(scene, camera);
    }

    animate();

    // Handle Resize
    window.addEventListener('resize', () => {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight);
    });
});
