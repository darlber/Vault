## Backend (Spring Boot Ecosystem)
- Java 25
- Spring Boot 3.2+
- Spring Security 6+ (Authentication)
- Spring Data JPA (Database)
- Spring WebSocket (Real-time)
- Spring Validation
- Spring Boot Actuator (Monitoring)
- Spring Session (Session Management)
- Spring Cloud Config (Optional, for scaling)

## Database & Storage
- PostgreSQL 15.15 (Primary relational DB)
- Redis 7+ (Caching & session storage)
- Amazon S3 / Cloudflare R2 (Media storage)
- MongoDB (Optional for flexible inventory data)

## Frontend (SvelteKit Stack)
- SvelteKit 2.0+ (Framework)
- TypeScript 5.0+
- Tailwind CSS 3.4+ (Styling)
- DaisyUI (UI Components)
- Svelte Stores (State management)
- Svelte Headless UI (Accessible components)

## Audio/Video Processing
- FFmpeg (Audio/video manipulation)
- Python 3.11+ (Processing service)
- FastAPI or Flask (Python microservice)
- Web Audio API (Browser audio)
- Tone.js (Web audio synthesis)
- Howler.js (Audio playback)
- YouTube IFrame API (Video embedding)

## Game-Specific Libraries
- Canvas API / Fabric.js (Character customization)
- Three.js / Babylon.js (3D character models - optional)
- Phaser 3 (Game engine if needed for minigames)
- PixiJS (2D rendering for character editor)

## Real-Time Communication
- STOMP over WebSocket (Spring implementation)
- Socket.io client (Alternative frontend)
- WebRTC (Peer-to-peer audio streaming)

## Authentication & Social
- JWT (JSON Web Tokens)
- OAuth 2.0 (Google/Facebook/Apple login)
- Spring Security OAuth2 Client
- Keycloak (Optional standalone auth server)

## DevOps & Deployment
- Docker & Docker Compose
- GitHub Actions / GitLab CI (CI/CD)
- Kubernetes (Production scaling)
- Nginx (Reverse proxy)
- Prometheus + Grafana (Monitoring)
- ELK Stack (Logging)
- AWS / Google Cloud / Azure (Cloud provider)
- Fly.io / Railway (Simpler deployment)

## Character & Shop System
- Blender / MagicaVoxel (Asset creation)
- TexturePacker (Sprite optimization)
- Spine / DragonBones (2D skeletal animation)
- GLTF/GLB format (3D model standard)
- Node.js microservice for inventory management

## Testing
- JUnit 5 (Backend unit tests)
- Mockito (Backend mocking)
- Testcontainers (Integration tests)
- Playwright / Cypress (E2E frontend tests)
- Vitest (Frontend unit tests)

## Development Tools
- IntelliJ IDEA / VS Code
- Postman / Insomnia (API testing)
- pgAdmin / DBeaver (Database GUI)
- Redis Insight (Redis GUI)
- Lombok (Java boilerplate reduction)
- MapStruct (Java object mapping)
- Gradle / Maven (Build tools)
- PNPM / Bun (Frontend package managers)

## Mobile Considerations (Future)
- Capacitor / Cordova (Web to mobile)
- React Native (Cross-platform - if you pivot)
- Unity (For native mobile version)
- Firebase (Mobile notifications/auth)

## Game Services
- Matchmaking service (Spring microservice)
- Leaderboard service (Redis-based)
- Achievement system
- Friend/party system
- Chat service (WebSocket-based)
- Notification service (WebPush/Email)

## Monetization & Analytics
- Stripe / Paddle (Payment processing)
- RevenueCat (Mobile subscriptions)
- Google Analytics 4
- Mixpanel / Amplitude (Event tracking)
- Segment (Customer data platform)

## Security
- Helmet.js (HTTP headers)
- CSP (Content Security Policy)
- Rate limiting (Resilience4j)
- OWASP dependency check
- JWT refresh token rotation
- Input sanitization (DOMPurify for frontend)

## Media Processing Pipeline
- Video encoding service (HandBrake CLI)
- Audio analysis (librosa Python library)
- Thumbnail generation (Sharp/ImageMagick)
- CDN (Cloudflare/CloudFront)

---

## Quick Start Stack (MVP)
- Backend: Spring Boot + PostgreSQL + Redis
- Frontend: SvelteKit + Tailwind + TypeScript
- Audio: Tone.js + Web Audio API
- Video: YouTube IFrame API + FFmpeg microservice
- Auth: Spring Security + JWT
- Deployment: Docker + Fly.io
- Storage: Cloudflare R2