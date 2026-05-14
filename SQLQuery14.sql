 • Selected students had higher interview scores
• Students with more projects had better selection chances
• GitHub activity positively affected internship selection
• Placement training improved interview performance
• Students with fewer backlogs had higher selection rates



CREATE DATABASE INTERNSHIP_PROJECT;
GO
USE INTERNSHIP_PROJECT;
GO
CREATE TABLE INTERNSHIP_PROJECT (
    student_id INT,
    CGPA FLOAT,
    skills_score INT,
    projects_count INT,
    internships_done INT,
    communication_score INT,
    aptitude_score INT,
    coding_test_score INT,
    resume_score INT,
    extracurricular VARCHAR(10),
    college_tier INT,
    hackathons_participated INT,
    certifications_count INT,
    linkedin_activity_score INT,
    github_score INT,
    soft_skills_score INT,
    interview_score INT,
    consistency_score INT,
    backlogs INT,
    placement_training VARCHAR(10),
    selected INT
);
GO

SELECT TOP 10 *
FROM INTERNSHIP_PROJECT;
GO
SELECT COUNT(*) AS total_students
FROM INTERNSHIP_PROJECT;
GO

SELECT COUNT(*) AS selected_students
FROM INTERNSHIP_PROJECT
WHERE selected = 1;
GO
SELECT AVG(CGPA) AS avg_selected_cgpa
FROM INTERNSHIP_PROJECT
WHERE selected = 1;
GO

SELECT AVG(skills_score) AS avg_skill_score
FROM INTERNSHIP_PROJECT;
GO

SELECT TOP 10 student_id,
       github_score
FROM INTERNSHIP_PROJECT
ORDER BY github_score DESC;
GO


SELECT TOP 10 student_id,
       projects_count
FROM INTERNSHIP_PROJECT
ORDER BY projects_count DESC;
GO
SELECT placement_training,
       COUNT(*) AS total_students,
       AVG(interview_score) AS avg_interview_score
FROM INTERNSHIP_PROJECT
GROUP BY placement_training;
GO

SELECT selected,
       AVG(interview_score) AS avg_interview
FROM INTERNSHIP_PROJECT
GROUP BY selected;
GO

SELECT college_tier,
       COUNT(*) AS total_students,
       AVG(selected * 100.0) AS selection_percentage
FROM INTERNSHIP_PROJECT
GROUP BY college_tier
ORDER BY selection_percentage DESC;

GO

SELECT
    AVG(CGPA) AS avg_cgpa,
    AVG(skills_score) AS avg_skills,
    AVG(projects_count) AS avg_projects,
    AVG(github_score) AS avg_github,
    AVG(interview_score) AS avg_interview
FROM INTERNSHIP_PROJECT
WHERE selected = 1;


