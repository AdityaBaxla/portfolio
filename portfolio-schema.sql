-- Enable UUID generation
create extension if not exists "pgcrypto";

-- ============================
-- Table: portfolio_content
-- For general written content, blog posts, articles
-- ============================
create table public.portfolio_content (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    body text,                          -- markdown/html content
    cover_image_url text,               -- optional image
    is_public boolean default true,     -- visible to public site
    owner_id uuid references auth.users(id),
    created_at timestamp with time zone default now(),
    updated_at timestamp with time zone default now()
);

-- ============================
-- Table: projects
-- Each project in the portfolio
-- ============================
create table public.projects (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    description text,                  -- project description
    cover_image_url text,              -- optional project cover image
    project_url text,                  -- optional external link (GitHub, demo, etc.)
    is_public boolean default true,    -- visible to public
    owner_id uuid references auth.users(id),
    created_at timestamp with time zone default now(),
    updated_at timestamp with time zone default now()
);

-- ============================
-- Table: portfolio_sections
-- For sections like About, Skills, Contact, Resume
-- ============================
create table public.portfolio_sections (
    id uuid primary key default gen_random_uuid(),
    section_type text not null,        -- 'About', 'Skills', 'Contact', 'Resume'
    content text,                       -- markdown/html content
    is_public boolean default true,    -- visible to public
    owner_id uuid references auth.users(id),
    created_at timestamp with time zone default now(),
    updated_at timestamp with time zone default now()
);

-- ============================
-- Table: resume_entries
-- Resume structured content (optional)
-- ============================
create table public.resume_entries (
    id uuid primary key default gen_random_uuid(),
    title text not null,               -- e.g., 'Software Engineer'
    organization text,                 -- e.g., company/university
    start_date date,
    end_date date,
    description text,
    entry_type text,                   -- e.g., 'Work', 'Education', 'Certification'
    is_public boolean default true,
    owner_id uuid references auth.users(id),
    created_at timestamp with time zone default now(),
    updated_at timestamp with time zone default now()
);

-- ============================
-- Enable RLS for all tables
-- ============================
alter table public.portfolio_content enable row level security;
alter table public.projects enable row level security;
alter table public.portfolio_sections enable row level security;
alter table public.resume_entries enable row level security;

-- ============================
-- RLS Policies
-- ============================

-- Public view policy
-- Allows anyone to select public content
create policy "public select portfolio_content"
on public.portfolio_content
for select
using (is_public = true);

create policy "public select projects"
on public.projects
for select
using (is_public = true);

create policy "public select portfolio_sections"
on public.portfolio_sections
for select
using (is_public = true);

create policy "public select resume_entries"
on public.resume_entries
for select
using (is_public = true);

-- Owner can modify their content
create policy "owner can modify portfolio_content"
on public.portfolio_content
for all
using (owner_id = auth.uid())
with check (owner_id = auth.uid());

create policy "owner can modify projects"
on public.projects
for all
using (owner_id = auth.uid())
with check (owner_id = auth.uid());

create policy "owner can modify portfolio_sections"
on public.portfolio_sections
for all
using (owner_id = auth.uid())
with check (owner_id = auth.uid());

create policy "owner can modify resume_entries"
on public.resume_entries
for all
using (owner_id = auth.uid())
with check (owner_id = auth.uid());
