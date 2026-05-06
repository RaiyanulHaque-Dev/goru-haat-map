-- Table for all haats (built-in + user-added)
CREATE TABLE haats (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  district TEXT NOT NULL,
  lat DOUBLE PRECISION NOT NULL,
  lng DOUBLE PRECISION NOT NULL,
  radius INTEGER
);

-- Table for price reports
CREATE TABLE reports (
  id TEXT PRIMARY KEY,
  haat_id TEXT REFERENCES haats(id) ON DELETE CASCADE,
  animal_type TEXT NOT NULL,
  size TEXT NOT NULL,
  price_min INTEGER NOT NULL,
  price_max INTEGER NOT NULL,
  notes TEXT,
  created_at TIMESTAMPTZ DEFAULT now(),
  votes_up INTEGER DEFAULT 0,
  votes_down INTEGER DEFAULT 0
);

-- Table for haat comments
CREATE TABLE comments (
  id TEXT PRIMARY KEY,
  haat_id TEXT REFERENCES haats(id) ON DELETE CASCADE,
  text TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Table for tracking user votes (prevents double voting)
CREATE TABLE user_votes (
  user_id TEXT NOT NULL,
  report_id TEXT REFERENCES reports(id) ON DELETE CASCADE,
  direction TEXT NOT NULL, -- 'up' or 'down'
  PRIMARY KEY (user_id, report_id)
);