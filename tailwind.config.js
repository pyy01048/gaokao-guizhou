/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        // 60% 背景中性色
        'bg-primary': '#FAFAFA',
        'bg-secondary': '#FFFFFF',
        'bg-tertiary': '#F5F5F5',
        // 30% 主品牌色 - 低饱和度深蓝
        'brand-primary': '#1E3A5F',
        'brand-secondary': '#2D5A8A',
        'brand-light': '#E8F0F8',
        // 10% 强调色 - 温暖珊瑚
        'accent-primary': '#E07B54',
        'accent-light': '#FDF2EE',
        // 功能色
        'success': '#10B981',
        'warning': '#F59E0B',
        'danger': '#EF4444',
        'info': '#3B82F6',
        // 文字色
        'text-primary': '#1A1A1A',
        'text-secondary': '#4B5563',
        'text-tertiary': '#9CA3AF',
      },
      fontFamily: {
        'display': ['Inter', 'system-ui', 'sans-serif'],
        'body': ['Inter', 'system-ui', 'sans-serif'],
      },
      spacing: {
        '18': '4.5rem',
        '22': '5.5rem',
        '30': '7.5rem',
      },
      boxShadow: {
        'elegant': '0 4px 20px rgba(0, 0, 0, 0.04)',
        'card': '0 2px 12px rgba(0, 0, 0, 0.06)',
        'hover': '0 8px 30px rgba(0, 0, 0, 0.08)',
      },
      borderRadius: {
        'elegant': '8px',
      },
    },
  },
  plugins: [],
}
