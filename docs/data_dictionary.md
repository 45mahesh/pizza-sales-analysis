\# 📘 Data Dictionary



This document describes the structure and meaning of each dataset used in the project.



\---



\## 🗂 orders



| Column Name | Description |

|------------|------------|

| order\_id   | Unique identifier for each order |

| order\_date | Date when the order was placed |

| order\_time | Time when the order was placed |



\---



\## 🗂 order\_details



| Column Name       | Description |

|------------------|------------|

| order\_details\_id | Unique identifier for each order item |

| order\_id         | Foreign key linking to orders table |

| pizza\_id         | Identifier for the pizza ordered |

| quantity         | Number of pizzas ordered |



\---



\## 🗂 pizzas



| Column Name    | Description |

|---------------|------------|

| pizza\_id      | Unique identifier for each pizza |

| pizza\_type\_id | Links to pizza\_types table |

| size          | Size of pizza (S, M, L, etc.) |

| price         | Price of the pizza |



\---



\## 🗂 pizza\_types



| Column Name    | Description |

|---------------|------------|

| pizza\_type\_id | Unique identifier for pizza type |

| name          | Name of the pizza |

| category      | Category (Classic, Veggie, Chicken, Supreme) |

| ingredients   | Ingredients used in the pizza |



\---



\## 🔗 Relationships



\- orders → order\_details (1 to many)

\- pizzas → order\_details (1 to many)

\- pizza\_types → pizzas (1 to many)

