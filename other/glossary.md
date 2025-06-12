# Glossary

## A

**Append Mode**  
A write operation in Apache Iceberg that adds new data files without modifying existing files or table metadata. Suitable for immutable datasets or time-series data.

**Apache Flink**  
A distributed stream-processing framework used in real-time ingestion pipelines. It integrates with Apache Iceberg to provide exactly-once semantics and supports checkpointing for reliable ingestion.

**Apache Iceberg**  
A high-performance table format for large analytic datasets. It enables features like schema evolution, time travel, hidden partitioning, and ACID transactions in data lake environments.

**Apache Spark**  
A unified analytics engine used for large-scale data processing. Commonly employed in Iceberg pipelines for both batch and streaming data ingestion and transformation.

**Auditability**  
The ability to trace data lineage and track schema changes and operational transformations within the ingestion and storage layers. Critical for compliance and debugging.

**Atomic Commit**  
A transaction model in Apache Iceberg that ensures either all changes in a write operation are applied or none are, preserving data consistency and eliminating partial writes.

## B

**Batch Ingestion**  
A data ingestion model where data is collected and loaded in discrete time intervals (e.g., hourly, daily). Best suited for historical data loads or use cases with less stringent latency requirements.

**Benchmarking**  
The process of measuring the performance characteristics (such as throughput, latency, or commit duration) of an Iceberg pipeline under specific workloads.

**Blob Storage**  
Cloud-based object storage (e.g., S3, GCS, ADLS) often used as the underlying file system for Iceberg tables. Provides scalable and cost-effective data storage.

**Bootstrapping**  
The initial loading of data into Iceberg tables from existing sources. Often involves schema inspection, transformation, and metadata creation.

**Broadcast Join**  
A join optimization technique in Spark and other engines where small datasets are sent to all worker nodes to avoid shuffling large volumes of data.

**Bucketing**  
A technique to divide data into fixed buckets based on a hash function, used to optimize joins and sampling. Although not native to Iceberg, similar logic can be implemented through partitioning strategies.

## C

**Catalog**  
In Apache Iceberg, a catalog manages the namespaces and metadata of tables. It enables multi-table transactions, time travel, and consistent schema evolution across datasets.

**Checkpointing**  
A mechanism used in streaming systems like Apache Flink to periodically save the state of the data pipeline. This enables exactly-once delivery by allowing pipelines to resume from the last consistent state after failure.

**Cloud-native**  
Refers to systems or tools that are designed to operate efficiently in cloud environments. Examples include AWS Glue, Azure Data Factory, or GCP Dataflow which integrate with Iceberg lakehouses.

**Compaction**  
A maintenance process in Apache Iceberg that merges small files into larger, optimized ones. Helps reduce metadata bloat and improve query performance by minimizing file fragmentation.

**Controlled Casting**  
The process of explicitly converting data types during ingestion to handle schema mismatches gracefully. Useful in pipelines where resilience to source inconsistencies is needed.

**Coordination Service**  
A background component (e.g., Zookeeper, etcd) sometimes used by processing frameworks to coordinate tasks, track state, or manage cluster metadata.

## D

**Data Lakehouse**  
A modern data architecture that combines the scalability of data lakes with the ACID properties and query performance of data warehouses. Apache Iceberg is a core enabling technology for this architecture.

**Dead-letter Queue (DLQ)**  
A destination for messages or data records that cannot be processed successfully. Used in ingestion pipelines to isolate and inspect problematic records.

**Deduplication**  
The process of identifying and removing duplicate records, often required in at-least-once ingestion models where retries may lead to reprocessing.

**Delta Commit**  
In Iceberg, a write operation that appends new data or deletes existing data without rewriting the entire table. Ensures minimal disruption and high efficiency.

**Dremio**  
A data lakehouse query engine designed to enable high-performance SQL analytics directly on data lake storage. Dremio integrates with Apache Iceberg to provide features such as time travel, reflection-based acceleration, and native support for Iceberg table metadata. It eliminates the need for data copying or movement by enabling in-place querying and is often used to build semantic layers over Iceberg datasets.

**Drift**  
Refers to changes in schema or data structure over time. Schema drift can occur as upstream systems evolve, and must be handled gracefully by the ingestion layer.

## E

**ETL (Extract, Transform, Load)**  
A traditional data integration process where data is extracted from sources, transformed into a suitable format, and loaded into a target system. In the Iceberg ecosystem, ETL pipelines are often built using tools like Spark or dbt.

**Exactly-once Semantics**  
A data delivery guarantee ensuring each record is processed and written only once, even in the face of retries or failures. Essential for consistent and trustworthy analytics.

**Evolution (Schema)**  
Refers to the ability to modify the schema of a table over time. Apache Iceberg supports schema evolution operations like adding, dropping, or renaming columns without rewriting historical data.

**Event Time**  
The timestamp associated with when an event actually occurred, as opposed to processing time. Important for correct windowing and time-based operations in stream processing.

**Executor**  
A component of distributed computing frameworks (e.g., Spark or Flink) responsible for performing computation tasks. Executors process partitions of data in parallel to scale throughput.

## F

**Fail-Fast Ingestion**  
An ingestion strategy where any mismatches in schema, data types, or formatting cause the pipeline to halt immediately. This ensures high data quality but requires robust error handling.

**File Fragmentation**  
Occurs when data is ingested in small files, leading to a large number of metadata entries and decreased read performance. Compaction helps mitigate this.

**Flink Checkpoint**  
A snapshot of Flink’s state taken at regular intervals to ensure exactly-once semantics during stream processing. Used to resume processing after failure without data loss.

**Forked Annotation**  
A form of code annotation in Manning books that points to non-adjacent lines of code, helping explain scattered but related logic.

## G

**Governance**  
The practice of managing data access, lineage, and quality. In Iceberg lakehouses, governance includes table versioning, audit logs, and schema enforcement.

**Granularity (Data)**  
Refers to the level of detail represented by data. Fine-grained data provides individual event records, while coarse-grained data might aggregate over time or categories.

**Glue (AWS Glue)**  
A managed ETL service by AWS that integrates with Iceberg for data cataloging and transformation. Offers serverless infrastructure for scalable data pipelines.

**Garbage Collection (Iceberg)**  
A process to clean up unused or expired data files and metadata from Iceberg tables, ensuring efficient storage usage over time.

## H

**Hidden Partitioning**  
A feature in Apache Iceberg where partitioning is abstracted from users, improving usability by eliminating the need to include partition columns in queries.

**Hedgehog Annotation**  
A visual annotation style used in Manning books to surround and highlight specific parts of a single line of code. Especially helpful in dense code snippets.

**Hive Metastore**  
A metadata repository commonly used with Hadoop-based systems. Apache Iceberg can integrate with Hive Metastore for table registration and access control.

**Hybrid Architecture**  
A lakehouse deployment model that combines batch and streaming ingestion to balance latency and throughput requirements across use cases.

**Hydration**  
The process of materializing data from low-cost or compressed formats into a form ready for processing or querying, often in preparation for analytics workloads.

## I

**Iceberg Snapshot**  
A point-in-time representation of an Iceberg table. Each snapshot captures the state of the table at a specific time, allowing time travel and rollback.

**Idempotent Writes**  
A writing pattern that ensures repeated operations result in the same outcome. Essential for reliable ingestion, particularly in the presence of retries.

**Incremental Ingestion**  
A model where only new or changed data since the last load is ingested. Reduces processing overhead and supports near-real-time analytics.

**Ingestion Layer**  
The entry point for data into an Apache Iceberg lakehouse. It determines how data is collected, transformed, and written to Iceberg tables.

**Ingestion Strategy**  
The chosen method for ingesting data—batch, micro-batch, or streaming—based on latency, throughput, and fault tolerance needs.

**Isolation (Snapshot Isolation)**  
A consistency mechanism in Iceberg that ensures readers see a stable snapshot of the table, even as new data is ingested concurrently.

## J

**Job Scheduling**  
The orchestration of data processing jobs, often using tools like Apache Airflow or cron-based systems. Controls when and how ingestion and transformation tasks execute.

**JSON Schema**  
A format used to define the structure of JSON data. Often used in conjunction with Kafka or schema registries to validate incoming records before ingestion.

**Join Optimization**  
Techniques used to enhance performance of joins in distributed computing engines. Broadcast joins and bucketed joins are examples that affect Iceberg query performance.

## K

**Kafka**  
A distributed messaging system frequently used as a data source for Iceberg ingestion. Supports both streaming and micro-batch models.

**Kafka Connect**  
A Kafka ecosystem tool for data integration. Provides connectors for moving data between Kafka and Iceberg-compatible systems with optional schema registry support.

**Keyed Table**  
An Iceberg table variant that supports primary key definitions for upsert and delete operations. Still an evolving feature in some Iceberg implementations.

**Kubernetes**  
An orchestration system for containerized applications. Commonly used to deploy scalable, resilient data pipeline components including those that write to Iceberg.

## L

**Lakehouse**  
A data architecture that unifies the capabilities of data lakes and data warehouses. Apache Iceberg provides the foundational table format for implementing this architecture with features like ACID transactions and schema evolution.

**Latency**  
The time delay between data generation and its availability for querying. A key metric in assessing the performance of ingestion pipelines.

**Lineage**  
The history of how data was transformed and moved throughout a system. Critical for auditability, debugging, and governance in lakehouse environments.

**Load Balancing**  
A technique for distributing workloads across computing resources to optimize performance and reliability in distributed ingestion or query jobs.

## M

**Manifest File**  
A metadata file in Apache Iceberg that tracks data files included in a snapshot. Manifests reduce the need to scan the full list of files during queries.

**Materialized View**  
A precomputed view stored on disk for fast querying. Can be used in Iceberg-based systems to optimize performance over frequently accessed aggregates or joins.

**Metadata Bloat**  
The growth of table metadata due to frequent small writes or numerous snapshots. Can degrade performance and is mitigated by actions like compaction and metadata pruning.

**Micro-batch**  
An ingestion approach where data is processed in small, frequent intervals. Balances latency and operational simplicity, especially useful in semi-real-time pipelines.

**Migration**  
The process of moving existing datasets or pipelines to an Iceberg-based architecture. Often involves bootstrapping, schema alignment, and refactoring of ingestion flows.

**Monitoring**  
Continuous observation of pipeline performance, failures, and system health. Vital for maintaining operational reliability and responding to ingestion issues proactively.

# Glossary (N–Q)

## N

**Namespace**  
A logical grouping of Iceberg tables, similar to a database schema. Helps organize and manage large collections of datasets in a catalog.

**Nullability**  
A property of a column indicating whether it can contain null values. Schema evolution in Iceberg must consider changes in nullability for compatibility.

**Normalization**  
A design practice in relational data modeling that organizes data to reduce redundancy. In lakehouses, denormalization is often preferred for performance optimization.

## O

**Observability**  
The ability to monitor the internal state of systems through logs, metrics, and traces. Critical in managing ingestion and transformation pipelines in a lakehouse architecture.

**Object Storage**  
Cloud-native storage systems (e.g., Amazon S3, Google Cloud Storage) used as the foundation for Iceberg tables. Enables scalable, durable, and cost-efficient data storage.

**Operational Complexity**  
The effort required to manage, monitor, and maintain ingestion and processing pipelines. Low operational complexity is a design goal for production-grade systems.

## P

**Parquet**  
A columnar storage format optimized for analytics. Widely used in Apache Iceberg for storing data files due to its efficiency in compression and query performance.

**Partition Evolution**  
A feature of Apache Iceberg that allows changes to partitioning strategies over time without rewriting historical data. Enhances flexibility in data organization.

**Partition Pruning**  
An optimization that allows query engines to skip scanning data files outside the query’s filter range based on partition values. Improves performance significantly.

**Pipeline Orchestration**  
The coordination of data ingestion, transformation, and loading steps using tools like Apache Airflow or cloud-native services.

**Processing Time**  
The time at which data is processed by the system, in contrast to event time. Important in stream processing where latency-sensitive operations are involved.

**Projection Pushdown**  
A query optimization that selects only the required columns from a dataset, reducing I/O and speeding up query execution.

## Q

**Query Engine**  
A system like Apache Spark, Trino, or Dremio that executes SQL queries on data stored in Iceberg tables. Must support Iceberg’s metadata and format features to perform efficiently.

**Query Optimization**  
Techniques used to enhance the performance of queries, including predicate pushdown, partition pruning, and metadata caching in the context of Iceberg.


## R

**Read Optimization**  
The practice of organizing data files, metadata, and schema to reduce scan times and improve query performance. Iceberg supports this through compaction, partitioning, and column pruning.

**Reflections**  
Pre-computed query results or aggregates, often used in query acceleration platforms. Can be layered on top of Iceberg tables to enhance performance.

**Reliability**  
The capacity of the ingestion system to handle errors, retries, and failures without data loss or corruption. A core requirement in production-grade Iceberg pipelines.

**Rollback**  
The act of reverting an Iceberg table to a previous snapshot, useful for correcting errors or recovering from failed writes.

## S

**Schema Evolution**  
The ability to change a table’s schema over time, including adding, dropping, or renaming columns. Iceberg manages schema evolution without rewriting existing data.

**Snapshot Isolation**  
A consistency model in Iceberg that ensures readers see a stable snapshot of the table. Supports concurrent reads and writes without conflicts.

**Spark Structured Streaming**  
A micro-batch stream processing engine in Apache Spark. Often used for real-time ingestion into Iceberg tables.

**SQL Extensions (Iceberg)**  
Custom SQL commands and syntax supported by engines like Spark or Trino to manage Iceberg tables, such as `ALTER TABLE REWRITE DATA USING BIN_PACK`.

## T

**Table Format**  
A specification defining how metadata and data files are organized. Apache Iceberg is a modern table format designed for analytics use cases in data lakes.

**Time Travel**  
A feature of Iceberg that enables querying historical versions of a table based on snapshot IDs or timestamps.

**Transformations**  
Operations that convert data from its source form into a structure or format suitable for analytics. Ingested data is often transformed before being written to Iceberg.

**Throughput**  
The volume of data processed by an ingestion pipeline within a time interval. High-throughput ingestion is essential for large-scale data platforms.

**Trino**  
An open-source distributed SQL query engine that supports Apache Iceberg. Optimized for federated querying across multiple data sources.


## U

**Upsert**  
A database operation that inserts new records or updates existing ones if they match specified conditions. Iceberg supports upserts via MERGE operations or keyed table functionality.

**Unstructured Data**  
Data that does not adhere to a fixed schema or format, such as text, images, or logs. While Iceberg focuses on structured data, it can reference unstructured data via external systems.

## V

**Versioning**  
Maintaining historical states of a dataset or table schema. Iceberg implements versioning through snapshots and metadata files.

**Virtual Table**  
A logical representation of a table used in querying, typically mapped to physical Iceberg tables through a SQL engine or BI tool.

## W

**Watermark**  
A concept in stream processing used to manage event time and lateness. Watermarks help streaming engines like Flink determine when to close out a time window.

**Write Amplification**  
A phenomenon where small, frequent writes lead to disproportionately large changes in metadata or file structure. Iceberg mitigates this with file compaction and snapshot optimization.

## X


## Y

**YAML**  
A human-readable configuration format used to define services, especially in Docker Compose files and CI/CD pipelines that support Iceberg environments.

## Z

**Z-Ordering**  
A data layout technique used to co-locate similar data on disk to improve query performance. While not natively part of Iceberg, similar techniques may be implemented during write optimizations.

**Zookeeper**  
A coordination service for distributed systems. Often associated with Hadoop ecosystems but less commonly used directly in modern Iceberg deployments.
