# smartLine
users
├── id (PK)
├── name
├── email
├── hash_pass
├── is_verified
├── verification_code
└── created_at

managers
├── id (PK)
├── user_id (FK → users.id)
├── company_name
└── created_at

providers
├── id (PK)
├── user_id (FK → users.id)
├── manager_id (FK → managers.id)
├── invite_code
└── created_at

queues
├── id (PK)
├── provider_id (FK → providers.id)
├── status (active/closed)
├── created_at
└── closed_at

queue_entries
├── id (PK)
├── queue_id (FK → queues.id)
├── user_id
├── user_name
├── position
├── status (waiting/serving/done)
└── joined_at

service_logs
├── id (PK)
├── queue_id (FK → queues.id)
├──user_id (FK → users.id)
├──user_name
├──company_name
├──start_time
├──end_time
├──stars (BETWEEN 1 AND 5)
└── end_time