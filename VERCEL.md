Here’s a simple, beginner-friendly tutorial on how to set up and deploy a basic HTML website using Vercel and GitHub. This guide assumes you’re new to both tools and will walk you through each step clearly.

---

### **Tutorial: Deploying a Simple HTML Website on Vercel with GitHub**

In this tutorial, you’ll create a basic HTML website, upload it to GitHub, and deploy it live on the internet using Vercel—all for free! This is perfect for beginners who want to share their first website with the world.

#### **What You’ll Need**
- A computer with an internet connection.
- A free GitHub account (sign up at [github.com](https://github.com)).
- A free Vercel account (sign up at [vercel.com](https://vercel.com)).
- A text editor (like Notepad, VS Code, or any basic editor).

---

### **Step 1: Create a Simple HTML Website**
Let’s start by making a basic webpage.

1. **Open a Text Editor**
   - Use any text editor you like (Notepad works fine for beginners).

2. **Write Your HTML Code**
   - Copy and paste this simple code into a new file:
     ```html
     <!DOCTYPE html>
     <html>
     <head>
       <title>My First Website</title>
     </head>
     <body>
       <h1>Hello, World!</h1>
       <p>This is my first website deployed with Vercel and GitHub!</p>
     </body>
     </html>
     ```

3. **Save the File**
   - Save it as `index.html` (make sure it ends with `.html`, not `.txt`).
   - Put it in a new folder on your computer called `my-website`.

---

### **Step 2: Set Up GitHub**
GitHub is a place to store your website’s files online. Let’s upload your HTML file there.

1. **Sign Up for GitHub**
   - Go to [github.com](https://github.com) and create a free account if you don’t have one.

2. **Create a New Repository**
   - Once logged in, click the “+” button in the top-right corner and select “New repository.”
   - Name it `my-website` (or anything you like).
   - Keep it **Public** (so Vercel can access it).
   - Don’t add any files yet—just click “Create repository.”

3. **Upload Your HTML File**
   - On the repository page, click “Add file” > “Upload files.”
   - Drag your `index.html` file (or the whole `my-website` folder) into the upload area.
   - Click “Commit changes” at the bottom to save it.

4. **Check Your Repository**
   - You should now see `index.html` listed in your GitHub repository.

---

### **Step 3: Sign Up for Vercel**
Vercel will host your website and make it live on the internet.

1. **Go to Vercel**
   - Visit [vercel.com](https://vercel.com) and click “Sign Up.”
   - Choose “Continue with GitHub” (it’s easiest since you’re using GitHub already).
   - Log in with your GitHub account and authorize Vercel.

2. **Welcome to Vercel**
   - After signing up, you’ll land on the Vercel dashboard.

---

### **Step 4: Deploy Your Website with Vercel**
Now, let’s connect GitHub to Vercel and launch your site.

1. **Start a New Project**
   - On the Vercel dashboard, click “Add New…” and select “Project.”

2. **Import Your GitHub Repository**
   - Vercel will show a list of your GitHub repositories.
   - Find `my-website` (or whatever you named it) and click “Import.”

3. **Configure Your Project**
   - Vercel will automatically detect that it’s an HTML project.
   - You don’t need to change anything—just click “Deploy.”

4. **Wait for Deployment**
   - Vercel will take a minute to process your files and deploy them.
   - Once it’s done, you’ll see a “Congratulations” screen with a live link (like `https://my-website-xyz.vercel.app`).

5. **Visit Your Website**
   - Click the link Vercel gives you. You should see your “Hello, World!” page live on the internet!

---

### **Step 5: Make Changes (Optional)**
Want to update your site? Here’s how:

1. **Edit Your HTML**
   - Open `index.html` on your computer and change the text (e.g., add `<p>I updated this!</p>`).
   - Save the file.

2. **Upload to GitHub**
   - Go back to your GitHub repository.
   - Click “Add file” > “Upload files,” and upload the updated `index.html`.
   - Click “Commit changes.”

3. **Automatic Redeploy**
   - Vercel watches your GitHub repository. When you upload changes, it automatically redeploys your site.
   - Refresh your Vercel link to see the updates!

---

### **Why This Works**
- **GitHub** stores your files and lets Vercel access them.
- **Vercel** takes those files and puts them online with a free URL.
- Together, they make it super easy to share your website!

---

### **Tips for Beginners**
- If your site doesn’t work, double-check that `index.html` is in the main folder (not inside another folder).
- You can add more files (like CSS or images) to your GitHub repository and Vercel will deploy them too.
- Explore Vercel’s dashboard to see analytics or add a custom domain later.

---

That’s it! You’ve just built and deployed your first HTML website using GitHub and Vercel. Share your link with friends and have fun experimenting with more HTML! Let me know if you get stuck—I’m here to help.
