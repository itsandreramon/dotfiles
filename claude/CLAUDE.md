# Global Rules

## PR/Code Review Comments
- Write comments in all lowercase without headlines
- Keep the tone casual and realistic, like a normal developer comment
- Avoid overly formal structure or bullet points unless necessary

## Code Comments
- Write code comments in all lowercase

## Jira Tickets
- To fetch Jira tickets assigned to the user, run: `/Users/I569918/Developer/jira-tickets/scrape-jira.sh`
- Usage options:
  - `./scrape-jira.sh` - Fetch all tickets
  - `./scrape-jira.sh --status "In Progress"` - Fetch only in-progress tickets
  - `./scrape-jira.sh --login --headed` - Force new login with visible browser (for interactive SSO)
  - `./scrape-jira.sh --change-status MOBILETIMESHEET-123 --to-status "In Progress"` - Change ticket status (also moves to active sprint when status is "In Progress")
- Output files are saved to `/Users/I569918/Developer/jira-tickets/output/`
- **Important:** If the scraper fails with HTTP 401 or login errors in headless mode, re-run with `--login --headed` to complete Microsoft SSO authentication interactively. The session cookies will be saved for future headless runs.
