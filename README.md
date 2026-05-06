# গরুর হাট – Qurbani Animal Price Map 🐄

A live, collaborative map of cattle market (haat) prices across Bangladesh, built for the Qurbani season. Users can:

- 🗺️ Browse 75+ built‑in haat locations on an interactive map
- 💰 Submit real‑time price reports (min & max BDT) for different animals
- 👍 Vote on other reports to improve accuracy
- 💬 Leave comments and share local insights
- 🔍 Search by animal type or haat name
- ➕ Mark new haats directly on the map
- 🔄 Cloud sync with Supabase so everyone sees the latest data

## Tech Stack

- **Frontend:** HTML, CSS, JavaScript (vanilla)
- **Map:** Leaflet.js + OpenStreetMap tiles
- **Backend & Database:** Supabase (PostgreSQL)
- **Hosting:** Static file – works on any web server or GitHub Pages

## Live Demo

If deployed via GitHub Pages, your link will be:  
`https://<your-username>.github.io/<repo-name>/`

(Replace with your actual URL after pushing).

## Setup & Usage

### Option 1: Run Locally
1. Clone this repository.
2. Open `index.html` in your browser.
3. The app will automatically connect to the public Supabase backend.  
   *(No build step required – it's a single HTML file.)*

### Option 2: Use Your Own Supabase Project
If you fork the project and want to use your own database:
1. Create a free Supabase project at [supabase.com](https://supabase.com).
2. Run the SQL scripts provided in `/supabase-schema.sql` to create the required tables.
3. Replace the `SUPABASE_URL` and `SUPABASE_ANON_KEY` constants at the top of `index.html` with your own.

## Database Schema

The app expects four tables in Supabase:  
`haats`, `reports`, `comments`, `user_votes`.  
Full schema can be found in `supabase-schema.sql`.

## Features

- **75+ pre‑loaded haats** covering all divisions of Bangladesh
- **Crowd‑sourced prices** with average calculation and confidence indicators
- **Trend analysis** (up/down/flat) based on recent reports
- **Animal filter:** Search by Goru, Chagol, Uth, Dumba, Vera, etc.
- **User voting** (one vote per report per user)
- **Mark new haats** with automatic district detection (via reverse geocoding)
- **Responsive sidebar** with Haats, Submit, Reports, Comments, and History tabs
- **Geolocation** – find the nearest haat with one click
- **Fallback to localStorage** when offline

## Screenshot

*(Add a screenshot of the app here – just drag one into your repo and reference it as shown below)*  
![App Screenshot](screenshot.png)

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request. The main idea is to keep the data accurate and improve the user experience.

## License

This project is open source under the MIT License. See `LICENSE` file for details.

## Acknowledgements

- Map data from OpenStreetMap contributors
- Leaflet library
- Supabase for real‑time database and authentication
- All the haat‑goers who share their price data!

---

Built with ❤️ for Bangladesh's Qurbani season.