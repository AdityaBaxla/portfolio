-- Enable the pgcrypto extension for UUID generation (if not already enabled)
create extension if not exists "pgcrypto";

-- Create the links table
create table public.links (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    url text not null,
    description text,
    icon text,
    is_private boolean not null default false,
    owner_id uuid references auth.users(id),
    created_at timestamp with time zone default now()
);

-- Enable Row-Level Security
alter table public.links enable row level security;

-- Policy: Allow everyone to select public links
create policy "Allow select public links"
on public.links
for select
using (is_private = false);

-- Policy: Allow owner to select their private links
create policy "Allow select own private links"
on public.links
for select
using (is_private = true and owner_id = auth.uid());

-- Policy: Allow owner to insert links
create policy "Allow owner insert"
on public.links
for insert
with check (owner_id = auth.uid());

-- Policy: Allow owner to update links
create policy "Allow owner update"
on public.links
for update
using (owner_id = auth.uid());

-- Policy: Allow owner to delete links
create policy "Allow owner delete"
on public.links
for delete
using (owner_id = auth.uid());
