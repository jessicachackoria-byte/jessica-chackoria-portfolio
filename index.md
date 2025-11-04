---
title: "Jessica Chackoria — Analytics Portfolio"
robots: noindex, nofollow
---

# Jessica Chackoria — Analytics Portfolio

Welcome! I’m **Jessica Chackoria**, a data analyst and organizational psychologist with a PhD in Industrial-Organizational Psychology. I specialize in transforming complex data—often from surveys—into clear, actionable insights through advanced analytics and interactive dashboards. My work bridges **People Analytics**, **Organizational Effectiveness**, and **Institutional Research**, combining technical rigor with a human-centered approach. I tend to be happiest when I’m in my zone writing R code, sipping a warm cup of tea on the side. When I’m not in front of my computer screen, I’m usually catching up on Formula One news or scrolling through dog memes.

## Public Dashboards

Here are examples of dashboards I have developed using Tableau to meet stakeholder needs, ranging from routine reporting to program review and strategic planning.  
These projects showcase skills in data visualization, stakeholder engagement, and translating complex information into actionable insights—capabilities that are highly applicable to **People Analytics**, **Organizational Effectiveness**, and **Institutional Research**. All dashboards are publicly available.

- [**Graduate Student Retention and Graduation Dashboard**](https://cie.ucmerced.edu/graduate-retention-and-graduation)  
- [**Degrees Awarded Dashboard**](https://cie.ucmerced.edu/degrees-awarded)  
- [**Underaduate Student Retention Dashboard**](https://cie.ucmerced.edu/undergraduate-retention-and-graduation)    

## Code Examples
Below are examples of reusable R scripts demonstrating applied analytics techniques relevant to People Analytics and Institutional Research. These scripts contain code only; no sensitive or confidential information is included.

- [**Cohen’s Kappa**](https://github.com/jessicachackoria-byte/jessica-chackoria-portfolio/blob/main/code-snippets/Cohens%20Kappa.R) — Code for calculating interrater reliability between evaluators
- [**Convert qualtrics data - Wide to long**](https://github.com/jessicachackoria-byte/jessica-chackoria-portfolio/blob/main/code-snippets/Convert%20qualtrics%20%20data%20-%20Wide%20to%20long.R) — Code for reshaping Qualtrics data into a long format suitable for visualization in tools like Tableau or Power BI
- [**Propensity Score Matching**](https://github.com/jessicachackoria-byte/jessica-chackoria-portfolio/blob/main/code-snippets/Propensity%20Score%20Matching.R) — Code to conduct propensity score matching to generate a comparison group for evaluating the effect of interventions

## Resources

As I developed my R skills in graduate school, I began building a personal repository of frequently used functions for cleaning, reshaping, and understanding datasets. They can be found here [**R Cheat Sheet**](https://docs.google.com/document/d/1BxzLUHBRzZudk8mhj9cHfmsPEeRxx-5mZOBTp5rkoHg/edit?usp=sharing ).


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
