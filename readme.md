# Architecting an Apache Iceberg Lakehouse

This repository serves as the official companion to the *Architecting an Apache Iceberg Lakehouse* book. It provides curated code samples, configuration files, and supporting materials to help you apply the concepts and techniques discussed throughout the chapters.

## Repository Overview

You’ll find examples organized by chapter, reflecting key topics covered in the book. Each directory contains self-contained resources to support your hands-on learning experience.

### Glossary

Here is a glossary of Term used throughout the book.

- [Glossary](./other/glossary.md)

### Chapter 2: Hands-on with Apache Iceberg

This chapter walks you through a practical setup to begin experimenting with Apache Iceberg. The materials below help you deploy a local development environment, perform sample transformations, and interact with metadata.

- [`docker-compose.yml`](./ch2/docker-compose.yml) – Compose file for launching Apache Iceberg with supporting services (e.g., Spark, PostgreSQL)
- [`example.py`](./ch2/example.py) – PySpark script demonstrating Iceberg table creation, data insertion, and querying
- [`postgres.sql`](./ch2/postgres.sql) – SQL snippets to configure metadata and simulate source systems using PostgreSQL
- [Docker Trouble Shooting Guide](./ch2/docker-trouble.md)



