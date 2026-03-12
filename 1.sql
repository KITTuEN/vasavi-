-- Database Updates for Student Import
USE best_outgoing;

-- 1. Make email nullable as students are imported without specific emails initially
ALTER TABLE users MODIFY COLUMN email VARCHAR(255) UNIQUE DEFAULT NULL;

-- 2. Add backlog columns to academic_records
ALTER TABLE academic_records ADD COLUMN IF NOT EXISTS present_backlogs INT DEFAULT 0;
ALTER TABLE academic_records ADD COLUMN IF NOT EXISTS history_of_backlogs INT DEFAULT 0;

-- Update for Best Outgoing Student and Final Submission tracking
ALTER TABLE users ADD COLUMN is_best_outgoing TINYINT DEFAULT 0 AFTER signature_path;

-- Ensure final_scores has the is_final_submitted column (if not already present)
-- ALTER TABLE final_scores ADD COLUMN is_final_submitted TINYINT DEFAULT 0;

-- Optional: If you want to track when the announcement was made
-- ALTER TABLE users ADD COLUMN best_outgoing_date DATETIME DEFAULT NULL AFTER is_best_outgoing;

-- 3. Pre-load 6 Panel Members
INSERT INTO users (name, email, password, role) VALUES 
('Panel Member 1', 'panel1@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel'),
('Panel Member 2', 'panel2@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel'),
('Panel Member 3', 'panel3@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel'),
('Panel Member 4', 'panel4@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel'),
('Panel Member 5', 'panel5@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel'),
('Panel Member 6', 'panel6@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'panel');

-- 4. Pre-load Super Admin
INSERT INTO users (name, email, password, role, department) VALUES 
('Super Admin', 'super_admin@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', NULL);
-- Note: Default password is 'password'

-- 5. Pre-load HOD details for Departments
INSERT INTO users (name, email, password, role, department) VALUES 
('HOD CSE/CST', 'hod_cse@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'CSE,CST'),
('HOD CAI/AIM', 'hod_cai@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'CAI,AIM'),
('HOD ECE/ECT', 'hod_ece@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'ECE,ECT'),
('HOD EEE', 'hod_eee@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'EEE'),
('HOD ME', 'hod_me@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'ME'),
('HOD CE', 'hod_ce@sves.org.in', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'CE');

-- 6. Unlock Students (Run this to restore access to students after import)
UPDATE users SET is_submitted = 0 WHERE role = 'student';
