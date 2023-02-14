/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
}

const isProd = process.env.NEXT_PUBLIC_DEVELOPMENT;
// const nextEnv = {
//   env: {
//     NEXT_PUBLIC_API_BASE: isProd == "STAGING" ? (
//     process.env.NEXT_PUBLIC_API_URL_STAGING)
//     : (process.env.NEXT_PUBLIC_API_URL_DEV)
//   }
// }

module.exports = nextConfig
// module.exports = nextEnv
