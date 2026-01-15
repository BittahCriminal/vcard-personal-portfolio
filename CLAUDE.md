# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal portfolio website for Leo A. Richard, a Platform Engineer specializing in cloud architecture, DevOps, and security. The portfolio showcases expertise in Azure, AWS, GCP, Kubernetes, Infrastructure as Code, and DevSecOps.

**Target Career Roles:**
- Platform Engineer (primary)
- Cloud Architect
- DevSecOps Engineer
- Data Platform Engineer

## Technology Stack

- **Frontend**: Pure HTML5, CSS3, vanilla JavaScript
- **Build Tools**: None - static website that runs directly in browser
- **Dependencies**:
  - Google Fonts (Poppins)
  - Ionicons 5.5.2 (CDN)
- **Deployment**: Static hosting (designed for GitHub Pages or similar)

## Development Commands

### Local Development
```bash
# No build step required - open directly in browser
# On Windows:
start index.html

# On macOS:
open index.html

# On Linux:
xdg-open index.html

# Using Python's built-in server (if needed):
python -m http.server 8000
# Then visit http://localhost:8000
```

### No Testing/Linting/Build
This project has no automated tests, linting, or build pipeline. Changes are tested by opening `index.html` in a browser.

## Project Structure

```
vcard-personal-portfolio/
├── index.html              # Main portfolio (single-page app)
├── assets/
│   ├── css/style.css       # All styles
│   ├── js/script.js        # All JavaScript functionality
│   └── images/             # Portfolio images, icons, avatars
├── instructions.md         # Detailed project requirements and strategy
└── project-updates.md      # Planned portfolio updates and content
```

## Architecture & Key Concepts

### Single-Page Application Structure
The portfolio uses JavaScript-based navigation (no page reloads). Five main sections are controlled via `data-page` attributes:
- **About** (`index.html:172`) - Bio and services
- **Resume** (`index.html:450`) - Work experience and skills
- **Portfolio** (`index.html:627`) - Project showcase
- **Certifications** (`index.html:859`) - Credentials
- **Blog** (`index.html:1099`) - Articles (placeholder)

Navigation is handled by `script.js:140-159` which toggles `.active` classes on sections.

### Project Filtering System
Portfolio and Certifications sections include category filtering:
- Filter buttons: Cloud Architecture, Applications, Web development, Infrastructure Solutions
- Implemented in `script.js:78-114` using `data-filter-item` and `data-category` attributes
- Works on both desktop (buttons) and mobile (select dropdown)

### Responsive Sidebar
Contact information sidebar (`index.html:40-124`) collapses on mobile with toggle button functionality in `script.js:10-15`.

## Content Strategy & Guidelines

### Portfolio Focus Areas
Per `instructions.md`, the portfolio emphasizes:
1. **Cloud Architecture** - Multi-cloud migrations, Kubernetes, DevSecOps pipelines
2. **Platform Engineering** - IaC frameworks, automation platforms, monitoring
3. **Infrastructure Solutions** - Hybrid cloud, mini rack solutions for small businesses
4. **Security & Compliance** - NIST, CIS, MITRE ATT&CK frameworks

### Project Content Requirements
When updating portfolio projects, each should include:
- **Problem Statement** - Business challenge addressed
- **Technical Stack** - Tools and technologies used (Azure, AWS, Kubernetes, Terraform, etc.)
- **Business Impact** - Quantifiable results (e.g., "30% cost reduction")
- **Category** - One of: Cloud Architecture, Applications, Web development, Infrastructure Solutions

See `project-updates.md` for detailed mapping of planned project updates.

### Skills & Technologies to Highlight
- **Cloud Platforms**: Azure, AWS, GCP
- **Infrastructure**: Kubernetes, Docker, Terraform, Helm
- **Security**: DevSecOps, threat modeling, compliance automation
- **Automation**: PowerShell, Python, Azure DevOps
- **Data**: Azure Fabric, Databricks, BigQuery

## Important Implementation Notes

### Updating Portfolio Projects
Portfolio projects are defined in three places (must update all):
1. **Portfolio section** (`index.html:689-853`) - Main portfolio page
2. **Certifications section** (`index.html:921-1085`) - Same structure, different context
3. Each project card includes:
   - `data-filter-item` attribute (for filtering)
   - `data-category` attribute (e.g., "Cloud Architecture")
   - Image, title, and category label

### Styling Conventions
- Uses BEM-like naming: `.service-item`, `.project-list`, `.blog-post-item`
- Custom properties (CSS variables) likely defined in `style.css`
- Responsive breakpoints handled in CSS (no CSS framework)

### Personal Information
Current contact details in sidebar:
- Email: l.richard@bytecloudconsulting.com
- Location: Seattle, Washington, USA
- LinkedIn: https://www.linkedin.com/in/leotus-a-richard/

### Hidden Sections
Some sections are currently hidden with `hidden` attribute:
- Education timeline (`index.html:456`)
- Testimonials (`index.html:267`)
- Clients section (`index.html:394`)

## Common Tasks

### Adding a New Portfolio Project
1. Locate the portfolio section (`index.html:689`)
2. Copy an existing `<li class="project-item">` block
3. Update `data-category`, image src, project title, and category label
4. If adding new category, update filter buttons at `index.html:635-653`

### Updating Professional Summary
Edit the about text at `index.html:179-181`

### Modifying Skills Section
Update the skills grid at `index.html:552-615`

### Adding Work Experience
Add timeline items in the experience section (`index.html:490-548`)

## Reference Documentation

For detailed information on:
- **Career strategy and target roles**: See `instructions.md`
- **Planned project updates**: See `project-updates.md`
- **Original template**: See `README.md` (Note: This is a fork/customization of codewithsadee/vcard-personal-portfolio)
