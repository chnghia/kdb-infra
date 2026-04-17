# KDB Infrastructure

This repository contains the shared infrastructure configurations for the KDB (Knowledge Database) ecosystem using Docker Compose.

## Services

- **PostgreSQL**: Meta database for Backoffice and general metadata.
- **Neo4j**: Graph database for Knowledge Graphs.
- **MinIO**: Object storage for document management.
- **Qdrant**: Vector database for RAG retrieval.

## Setup

1. **Clone this repository** alongside your other `kdb-*` projects:
   ```
   workspace/
   ├── kdb-rag/
   ├── kdb-data-factory/
   └── kdb-infra/
   ```

2. **Start Services**:
   ```bash
   make up
   ```

3. **Stop Services**:
   ```bash
   make stop
   ```

4. **Cleanup Data**:
   ```bash
   make down # WARNING: This removes volumes (data loss!)
   ```

## Development

Use `make help` to see all available commands.
