# Universe Database (PostgreSQL)

This repository contains a PostgreSQL database dump for the **Universe** database, created as part of freeCodeCamp’s *Build a Celestial Bodies Database* project.

The database models a simplified astronomical system using relational tables and constraints.

## Database Structure

The schema consists of the following tables:

- **galaxy** – Stores galaxies and their basic properties  
- **star** – Stores stars and references their parent galaxy  
- **planet** – Stores planets and references their host star  
- **moon** – Stores moons and references their parent planet  
- **composition** – Stores basic elemental composition of selected celestial objects  

## Relationships

- One **galaxy** can have many **stars**  
- One **star** can have many **planets**  
- One **planet** can have many **moons**  
- The **composition** table links elements to stars, planets, or moons  

All relationships are enforced using **foreign keys**, and each table uses an auto-incrementing **primary key**.

## Features Demonstrated

This project practices:

1. Designing relational database schemas  
2. Using primary keys and unique constraints  
3. Implementing foreign key relationships  
4. Applying normalization  
5. Using sequences for auto-incrementing IDs  
6. Writing and restoring PostgreSQL database dumps  
7. Querying related data across multiple tables  

---

<img width="902" height="520" alt="image" src="https://github.com/user-attachments/assets/4679dcf9-af2b-4aa9-b31b-1b001f6fbf27" />
<img width="854" height="646" alt="image" src="https://github.com/user-attachments/assets/16518baa-598d-454f-9124-9deab285bc3e" />
<img width="811" height="284" alt="image" src="https://github.com/user-attachments/assets/140e70ad-cc83-4a71-b198-a9e5afc60470" />
<img width="970" height="780" alt="image" src="https://github.com/user-attachments/assets/9df79f7b-95f7-440c-b2d9-716730fd3f18" />
<img width="853" height="776" alt="image" src="https://github.com/user-attachments/assets/e94fde30-8390-4cab-a5d2-07da2bfd78cd" />




