# export CORS_ALLOW_ORIGIN="http://localhost:5173"
export CORS_ALLOW_ORIGIN='http://localhost:5173;http://localhost:8080;http://192.168.100.130:5173;http://192.168.100.130:8080'
PORT="${PORT:-8080}"
uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips '*' --reload
