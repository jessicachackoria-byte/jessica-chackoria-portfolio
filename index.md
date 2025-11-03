---
title: "Jessica Chackoria — Analytics Portfolio"
robots: noindex, nofollow
---

# Jessica Chackoria — Analytics Portfolio

Welcome! This portfolio features dashboards and code from people-related data projects.

## Public Dashboards

Here are examples of dashboards I have developed using Tableau to meet stakeholder needs, ranging from routine reporting to program review and strategic planning.  
These projects showcase skills in data visualization, stakeholder engagement, and translating complex information into actionable insights—capabilities that are highly applicable to **People Analytics**, **Organizational Effectiveness**, and **Institutional Research**. All dashboards are publicly available.

- [**Graduate Student Retention and Graduation Dashboard**](https://cie.ucmerced.edu/graduate-retention-and-graduation)  
- [**Degrees Awarded Dashboard**](https://visualizedata.ucop.edu/t/UCMerced/views/DegreesAwarded/Home?%3Aembed=y&%3Aiid=2&%3AisGuestRedirectFromVizportal=y)  
- [**Underaduate Student Retention Dashboard**](https://cie.ucmerced.edu/degrees-awarded)    .

## Code Examples
Below are examples of reusable R scripts demonstrating applied analytics techniques relevant to People Analytics and Institutional Research. These scripts contain code only; no sensitive or confidential information is included.

- [**Propensity Score Matching**](code-snippets/Propensity%20Score%20Matching.R) — Performs propensity score matching to generate a comparison group for evaluating the effect of interventions.
- [**Cohen’s Kappa**](code-snippets/Cohens%20Kappa.R) — Calculates interrater reliability between evaluators.


<script>
document.addEventListener("DOMContentLoaded", function() {
  // Select all anchor tags
  document.querySelectorAll('a[href]').forEach(link => {
    // Skip internal anchors (links that start with "#")
    if (link.getAttribute('href').startsWith('#')) return;

    // Skip same-page or relative links (those that don't start with http)
    if (!link.getAttribute('href').startsWith('http')) return;

    // Add new-tab attributes
    link.setAttribute('target', '_blank');
    link.setAttribute('rel', 'noopener noreferrer');
  });
});
</script>
