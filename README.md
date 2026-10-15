# kilichbek.github.io/webpage

Personal academic website of Kilichbek Haydarov, built with [al-folio](https://github.com/alshedivat/al-folio) **v1.2** (starter synced to upstream `ba1c8104`, 2026-10-12).

al-folio v1.x is a thin Jekyll starter: layouts, includes, styles and feature JS ship in versioned gems (`al_folio_core` and the `al_*` plugins pinned in `Gemfile`). This repo holds only site content and configuration.

## Where things live

| What                              | Where                                                    |
| --------------------------------- | -------------------------------------------------------- |
| Site settings, analytics, plugins | `_config.yml`                                            |
| Social links (navbar icons)       | `_data/socials.yml`                                      |
| Bio, profile photo, news settings | `_pages/about.md`                                        |
| News items                        | `_news/`                                                 |
| Publications                      | `_bibliography/papers.bib` (`selected={true}` → home page) |
| AI artworks                       | `_projects/`                                             |
| HyperCGAN / Mental project pages  | `_pages/hypercgan.md`, `_pages/mental.md`                |
| Their standalone (Bulma) layouts  | `_layouts/project.html`, `_layouts/mental.html`, `assets/static/` |
| CV PDF                            | `assets/pdf/Kilichbek_Haydarov_CV.pdf`                   |

## Local preview

```bash
docker compose up        # http://localhost:8080/webpage/
# or, with Ruby 3.3:
bundle install
bundle exec jekyll serve # http://localhost:4000/webpage/
```

## Deployment

Pushing to `master` runs `.github/workflows/deploy.yml`, which builds the site and publishes `_site/` to the `gh-pages` branch.

## Upgrading al-folio

1. Read the release notes in `docs/releases/` upstream and update the `al_*` gem pins in `Gemfile` (and `plugins:` in `_config.yml` if a gem is added or removed — the two lists must agree).
2. `bundle update` then `bundle exec al-folio upgrade audit`.
3. Build locally and check the home, projects, publications and the two project pages.
