\# Data Dictionary – Pizza Sales Project



\## 1. orders

| Column Name | Description |

|------------|------------|

| order\_id | Unique identifier for each order |

| date | Date when the order was placed |

| time | Time when the order was placed |



\---



\## 2. order\_details

| Column Name | Description |

|------------|------------|

| order\_details\_id | Unique identifier for each order line |

| order\_id | Foreign key linking to orders table |

| pizza\_id | Foreign key linking to pizzas table |

| quantity | Number of pizzas ordered |



\---



\## 3. pizzas

| Column Name | Description |

|------------|------------|

| pizza\_id | Unique pizza identifier (includes size) |

| pizza\_type\_id | Links to pizza\_types table |

| size | Size of pizza (S, M, L, XL, XXL) |

| price | Price of the pizza |



\---



\## 4. pizza\_types

| Column Name | Description |

|------------|------------|

| pizza\_type\_id | Unique identifier for pizza category |

| name | Full name of the pizza |

| category | Type (Classic, Chicken, Veggie, Supreme) |

| ingredients | Ingredients used in the pizza |

