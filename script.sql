-- Criação da tabela de usuários
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100000),
    email VARCHAR,
    role VARCHAR,
    password_hash VARCHAR,
    country VARCHAR,
    state VARCHAR,
    city VARCHAR,
    neighborhood VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR
);

-- Criação da tabela form_resenha
CREATE TABLE form_resenha (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    age INTEGER,
    gender INTEGER,
    scholarity_level BYTEA,
    housing_type VARCHAR,
    family_status VARCHAR,
    annual_income INTEGER,
    people_in_house INTEGER,
    next_form VARCHAR
);

-- Criação da tabela form_tem
CREATE TABLE form_tem (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    dog_name VARCHAR,
    dog_sex INTEGER,
    neutered BYTEA,
    time_w_dog TIMESTAMP,
    num_of_pets INTEGER,
    first_dog BYTEA,
    dog_age INTEGER,
    dog_breed VARCHAR,
    dog_breed_type VARCHAR,
    dog_origin VARCHAR,
    method_of_acquiring BYTEA,
    age_arrived INTEGER,
    dog_personality VARCHAR,
    id_dog_reason INTEGER REFERENCES reasons_dog(id),
    dog_characteristics VARCHAR,
    dog_decision VARCHAR,
    couldn't_keep_dog VARCHAR,
    went_to_vet BYTEA,
    num_of_vets INTEGER,
    dog_considerations VARCHAR
);

-- Criação da tabela form_teve
CREATE TABLE form_teve (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    dog_name VARCHAR,
    dog_owner BYTEA,
    time_with_dog TIME,
    first_dog BYTEA,
    other_pets BYTEA,
    new_field INTEGER,
    num_other_pets INTEGER,
    dog_age_arrived INTEGER,
    neutered BYTEA,
    dog_breed VARCHAR,
    dog_breed_type VARCHAR,
    dog_origin VARCHAR,
    dog_price INTEGER,
    id_dog_reason INTEGER REFERENCES reasons_dog(id),
    dog_characteristics VARCHAR,
    dog_name_decision VARCHAR,
    dog_positives VARCHAR,
    dog_negatives VARCHAR,
    went_to_vet BYTEA,
    num_of_vets INTEGER,
    vet_reason VARCHAR,
    date_left DATE,
    age_left INTEGER,
    why_left VARCHAR,
    new_dog BYTEA,
    new_dog_reason VARCHAR
);

-- Criação da tabela reasons_dog
CREATE TABLE reasons_dog (
    id SERIAL PRIMARY KEY,
    company_kids BYTEA,
    company_adults BYTEA,
    appearance BYTEA,
    company_dog BYTEA,
    responsibility_kids BYTEA,
    friends_had BYTEA,
    protection BYTEA,
    help_friend BYTEA,
    save_life BYTEA,
    new_field INTEGER,
    gift BYTEA,
    other VARCHAR
);

-- Criação da tabela form_quer
CREATE TABLE form_quer (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    new_field INTEGER,
    dog_size VARCHAR,
    dog_fur_length VARCHAR,
    dog_color VARCHAR,
    dog_sex VARCHAR,
    dog_age INTEGER,
    dog_breed_type VARCHAR,
    reason_want VARCHAR,
    dog_name_idea VARCHAR,
    dog_name_idea_reason VARCHAR,
    want_buy VARCHAR,
    when_include VARCHAR,
    dog_personality VARCHAR,
    dog_expenses VARCHAR
);

-- Criação da tabela form_não_quer
CREATE TABLE form_não_quer (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    reason VARCHAR
);
