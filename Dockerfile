FROM n8nio/n8n:latest
EXPOSE 5678
HEALTHCHECK --interval=2s --timeout=1s --start-period=5s CMD curl -f http://localhost:5678/ || exit 1
CMD ["n8n", "start"]
