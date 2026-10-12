-- 1. جدول المستخدمين
UPDATE users 
SET created_at = datetime(created_at, '+3 hours')
WHERE created_at IS NOT NULL;

-- 2. جدول مقدمي الخدمة
UPDATE providers 
SET created_at = datetime(created_at, '+3 hours')
WHERE created_at IS NOT NULL;

-- 3. جدول المديرين
UPDATE managers 
SET created_at = datetime(created_at, '+3 hours')
WHERE created_at IS NOT NULL;

-- 4. جدول الشركات
UPDATE companies 
SET created_at = datetime(created_at, '+3 hours')
WHERE created_at IS NOT NULL;

-- 5. جدول الخدمات
UPDATE services 
SET created_at = datetime(created_at, '+3 hours')
WHERE created_at IS NOT NULL;

-- 6. جدول الطوابير (تاريخ الإنشاء وتاريخ الإغلاق)
UPDATE queues 
SET created_at = datetime(created_at, '+3 hours'),
    closed_at = CASE 
                  WHEN closed_at IS NOT NULL THEN datetime(closed_at, '+3 hours') 
                  ELSE NULL 
                END
WHERE created_at IS NOT NULL;

-- 7. جدول تذاكر الطابور
UPDATE queue_entries 
SET joined_at = datetime(joined_at, '+3 hours')
WHERE joined_at IS NOT NULL;

-- 8. جدول سجلات الخدمة (وقت البدء ووقت الانتهاء)
UPDATE service_logs 
SET start_time = datetime(start_time, '+3 hours'),
    end_time = CASE 
                 WHEN end_time IS NOT NULL THEN datetime(end_time, '+3 hours') 
                 ELSE NULL 
               END
WHERE start_time IS NOT NULL;