# Adventures of Nora the Neurotic Panda

Welcome to Adventures of Nora the Neurotic Panda, a text-based adventure game built with React, Ruby on Rails, and Postgresql. Embark on an exciting journey with Nora, the neurotic yet lovable panda, as she navigates a vampiric conspiracy, thwarts the attempted kidnapping of her cat, Archduke Ferdinand, or ignores all signs of strangeness and stubbornly goes about her day; the choice is yours. This README will guide you through the setup and provide an overview of the project structure.

I built this game because I wasn't able to find a full stack text-based adventure game template for React and Ruby, and I wanted one to exist.  The story line's inspired by my panda stress squishy.

## Screenshots

[Home Page]<img width="1389" alt="Screenshot 2023-05-24 at 6 25 14 PM" src="https://github.com/pallas0/Adventures-of-Nora-the-Neurotic-Panda/assets/52135849/7b3b0e50-90d9-4d36-83e0-6e4b061fee28">


[Gameplay Example]<img width="1394" alt="Screenshot 2023-05-24 at 6 25 57 PM" src="https://github.com/pallas0/Adventures-of-Nora-the-Neurotic-Panda/assets/52135849/4c7e9dc8-fd43-4764-9535-77952bc63b59">


## Backend Design

The backend of Adventures of Nora the Neurotic Panda is built with Ruby on Rails and uses PostgreSQL as the database. The design follows a RESTful architecture, allowing for seamless communication between the frontend and backend. Below is a diagram illustrating the backend's design:

[Backend Design Diagram]![1_t6vP_uoxEZV5F24JmG0D2g](https://github.com/pallas0/Adventures-of-Nora-the-Neurotic-Panda/assets/52135849/e0ca85fb-1309-4633-85de-4748acdde2ae)


## Prerequisites

Before running the application, ensure that you have the following dependencies installed on your machine:

- Node.js and npm
- Ruby
- Rails
- PostgreSQL

## Installation

To get started with Adventures of Nora the Neurotic Panda, follow these steps:

1. Clone the repository:

```
git clone https://github.com/your-username/adventures-of-nora-the-neurotic-panda.git
```

2. Navigate to the project directory:

```
cd adventures-of-nora-the-neurotic-panda
```

3. Install frontend dependencies:

```
npm install --prefix client
```

4. Install backend dependencies:

```
bundle install
```

5. Create and seed the database:

```
rails db:create
rails db:migrate
rails db:seed
```

## Usage

To run the application, execute the following commands:

- Start the frontend:

```
npm start --prefix client
```

- Start the backend:

```
rails s
```

Open your browser and visit `http://localhost:4000` to access Adventures of Nora the Neurotic Panda.

## License

The Adventures of Nora the Neurotic Panda project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgments

We would like to acknowledge the following individuals and resources for their contributions to this project:


- [React](https://reactjs.org/): JavaScript library for building user interfaces.
- [Ruby on Rails](https://rubyonrails.org/): Web application framework.
- [PostgreSQL](https://www.postgresql.org/): Open-source relational database management system.

