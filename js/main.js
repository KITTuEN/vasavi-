document.addEventListener('DOMContentLoaded', () => {
    // Login Handling
    // Login Handling
    const handleLogin = async (e, formId, roleOverride) => {
        e.preventDefault();
        const emailInput = document.querySelector(`#${formId} input[type="email"]`);
        const passwordInput = document.querySelector(`#${formId} input[type="password"]`);
        let alertBoxId = 'studentLoginAlert';
        if (formId === 'adminLoginForm') alertBoxId = 'adminLoginAlert';
        if (formId === 'panelLoginForm') alertBoxId = 'panelLoginAlert';
        const alertBox = document.getElementById(alertBoxId);

        const email = emailInput.value;
        const password = passwordInput.value;

        try {
            const res = await fetch('auth/login', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ email, password, role: roleOverride })
            });

            let data;
            const contentType = res.headers.get("content-type");
            if (contentType && contentType.indexOf("application/json") !== -1) {
                data = await res.json();
            } else {
                const text = await res.text();
                console.error("Non-JSON response received:", text);
                data = { error: "Server returned non-JSON response. status: " + res.status };
            }

            if (res.ok) {
                if (data.redirect) {
                    window.location.href = data.redirect.replace(/^\//, ''); // Ensure relative redirect
                } else {
                    showAlert(alertBox, data.error || 'Login successful but no redirect provided', 'error');
                }
            } else {
                showAlert(alertBox, data.error || ('Login failed with status ' + res.status), 'error');
            }
        } catch (err) {
            console.error("Fetch error:", err);
            showAlert(alertBox, 'An error occurred: ' + err.message, 'error');
        }
    };

    const adminForm = document.getElementById('adminLoginForm');
    if (adminForm) {
        adminForm.addEventListener('submit', (e) => handleLogin(e, 'adminLoginForm', 'staff'));
    }

    const studentForm = document.getElementById('studentLoginForm');
    if (studentForm) {
        studentForm.addEventListener('submit', (e) => handleLogin(e, 'studentLoginForm', 'student'));
    }


    // Register Handling
    const registerForm = document.getElementById('registerForm');
    if (registerForm) {
        registerForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const name = document.getElementById('regName').value;
            const email = document.getElementById('regEmail').value;
            const password = document.getElementById('regPassword').value;
            const role = document.getElementById('regRole').value;
            const department = document.getElementById('regDept').value;
            const roll_number = document.getElementById('regRoll').value;
            const contact_number = document.getElementById('regContact').value;
            const alertBox = document.getElementById('registerAlert');

            const body = { name, email, password, role };
            if (role === 'student') {
                body.department = department;
                body.roll_number = roll_number;
                body.contact_number = contact_number;
            }

            try {
                const res = await fetch('auth/register', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(body)
                });
                const data = await res.json();

                if (res.ok) {
                    showAlert(alertBox, 'Registration successful! Please login.', 'success');
                    registerForm.reset();
                } else {
                    showAlert(alertBox, data.error, 'error');
                }
            } catch (err) {
                showAlert(alertBox, 'An error occurred', 'error');
            }
        });
    }

    function showAlert(element, message, type) {
        element.textContent = message;
        element.className = `alert alert-${type}`;
        element.style.display = 'block';
    }
});
