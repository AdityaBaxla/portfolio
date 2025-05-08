# Hi, It's Aditya

Im creating my portfolio with my work.

Portfolio Website to demonstrate my credentials and work.

reference : <https://alexpate.com/>

---

## 📘 What I Learned – Vue + Flask Fullstack Portfolio Deployment

This project was more than just building a portfolio — it was a full-cycle journey through development, frontend-backend integration, deployment, and debugging. Below is a summary of the major lessons and concepts I learned:

---

## 🧱 Project Structure & Technologies

- **Frontend**: Vue 3 with Vite
- **Backend**: Flask (Python) with Gunicorn
- **Deployment**: Manual server setup using a Linux VPS (Ubuntu) + Supervisor + NGINX
- **CI/CD**: GitHub Actions automating build & deployment
- **Domain**: Hosted via HTTPS with Let's Encrypt

---

## 🧠 Key Concepts Learned

### 🧩 1. **Frontend Build and Integration**

- Configured `vite.config.js` with `base: '/static/'` to align Vue build paths with Flask’s static serving model
- Understood how Vue builds into `index.html` + hashed asset files inside `dist/assets/`
- Used relative asset paths to avoid broken links and MIME-type errors in Flask

### 🐍 2. **Flask Static File Serving**

- Flask serves files from `/static/` and renders HTML from `/templates/`
- Learned how to use `render_template("index.html")` while referencing built assets correctly
- Verified correct `Content-Type` headers (e.g., for `.css`, `.js`) to avoid browser blocking

### 🔐 3. **Linux Permissions & Web Server Behavior**

- Troubleshot `403 Forbidden` by learning:

  - File vs folder permissions (`644` for files, `755` for folders)
  - Flask/Gunicorn process users (e.g., `www-data`) needing access
  - Ownership (`chown`) matters just as much as permission bits

- Identified and resolved `NS_ERROR_CORRUPTED_CONTENT` from MIME mismatches

### 🚀 4. **Deployment via GitHub Actions**

- Created a custom GitHub Actions pipeline to:

  - Build the Vue frontend
  - Securely copy `index.html` and assets to the Flask server
  - Restart the Flask app via Supervisor

- Learned how to securely manage SSH keys and GitHub secrets (`DEPLOY_KEY`, `SERVER_HOST`, `SERVER_USER`)
- Automated everything with `.github/workflows/deploy.yml`

### 🌐 5. **NGINX as a Reverse Proxy**

- Set up NGINX to:

  - Forward requests to Flask (`proxy_pass`)
  - Redirect HTTP to HTTPS
  - Initially tried (and learned why not to) serve static files via NGINX alongside Flask

- Understood how NGINX, Flask, and Vue interact in a full production stack

---

## 🧪 Debugging Experience Gained

- Diagnosed and fixed:

  - Broken asset loading paths
  - MIME type mismatches
  - 403 and 404 errors from NGINX
  - Cache issues from browsers and incorrect content being served

- Used `curl`, `DevTools`, and `supervisorctl` for end-to-end debugging

---

## 💡 Reflections

> While it would’ve been easier to serve a static site via Netlify or Vercel, building the backend with Flask and handling deployment manually taught me real-world devops and integration skills — from NGINX to permissions to build systems and CI.

---

## ✅ Next Steps

- Add API endpoints to serve dynamic data from Flask
- Include contact form or blog section backed by Flask
- Split frontend and backend into separate deployable services (e.g., NGINX serves Vue, Flask handles `/api`)

---
