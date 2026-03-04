# dailygrind
## A dashboard in PowerBI using order data, product data, and customer data. This dashboard aims to allow for analysis on revenue, top products, regions, and more.
<img width="780" height="440" alt="image" src="https://github.com/user-attachments/assets/2c28d3ad-2821-480f-be63-c5e3584b1dc3" />
<img width="777" height="441" alt="image" src="https://github.com/user-attachments/assets/2b44bcb9-69c8-47c3-8084-8f7b678643ec" />

In SQL, I replaced null revenue values with quanity * price using: 
CASE WHEN a.Revenue is NULL then p.Price * a.Quantity else a.Revenue

I also created a profit column using: 
a.Revenue - a.COGS AS Profit

# Answering Possible Business Questions

### Top 5 Products Based On Profit? 
<img width="324" height="76" alt="image" src="https://github.com/user-attachments/assets/3e5ce8a4-27e2-4398-bd56-f6bed62ad434" />

### Top Categories? 
<img width="382" height="129" alt="image" src="https://github.com/user-attachments/assets/8254c347-3677-4f37-b776-89bd0dc23ae0" />

Grinders & brewers are the most popular category of product by far, followed by subscriptions. Grinders & brewers contribute to more than half of profits.

### Is Business Growing Year-Over-Year?
<img width="372" height="178" alt="image" src="https://github.com/user-attachments/assets/6752ef2f-e9e6-4eaa-a603-7846a069459f" />

March and April in 2025 seem to have improved in terms of profits compared 2024 and 2023, but are very similar during the summer. Peak holiday season improved significantly.

### Most Popular Regions?
<img width="369" height="172" alt="image" src="https://github.com/user-attachments/assets/d62cd3b2-87c0-4ae7-a0c4-565318da7b50" />

Our products are most popular with those who live in the West, followed by the South, North, and finally the East.
