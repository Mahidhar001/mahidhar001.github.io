//Function to show sections
function showSection(sectionId) {
    const sections = document.querySelectorAll('main > div');

    sections.forEach(section => {
        section.classList.add('hidden');
    });

    const activeSection = document.getElementById(sectionId);
    if (activeSection) {
        activeSection.classList.remove('hidden');
    }
}

// Show welcome section at first
document.addEventListener('DOMContentLoaded', () => {
    showSection('welcome-section');
});
