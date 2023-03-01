/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      maxHeight: {
        sidebar: 'calc(100vh - 45px)'
      },
      minHeight: {
        sidebar: 'calc(100vh - 45px)'
      }
    },
  },
  plugins: [],
}
