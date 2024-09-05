create extension if not exists citext;


create table if not exists public.users (id bigserial PRIMARY KEY, username citext unique not null, password text, avatar text, is_admin BOOLEAN DEFAULT false, created_at timestamp default now(), updated_at timestamp default now());


create table if not exists public.posts (id bigserial primary key, user_id bigint REFERENCES public.users(id), content text, created_at TIMESTAMP default now(), updated_at TIMESTAMP default now());


create table if not exists public.follows(user_id BIGINT not null REFERENCES public.users (id), follower_id bigint not null REFERENCES public.users (id), created_at TIMESTAMP DEFAULT now(), updated_at TIMESTAMP DEFAULT now());


create index posts_user_id_index on public.posts (user_id);


create index follows_user_id_index on public.follows (user_id);


create index follows_follower_id_index on public.follows(follower_id);