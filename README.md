Assumptions:
1. No method of delivery is specified for this assignment so I am assuming a public GitHub repository is fine.
2. Although a database + web/UI solution is not a requirement, it is also not prohibited.
3. The ordering task specified in requirement 3 of the interview exercise document only applies to requirement 3 and not the orders index detailed in exercise 1.
4. Docker and RSPEC tests are not required. I would have added these but I am a bit busy at the moment. Happy to add them if given more time.

Notes/Reasoning:
1. I used Rails scaffolding because it is easy and enforces Convention over Configuration. See Order Model View Controller.
2. I used SQL because it seemed a clean and neat way to do the data aggregation work. 
3. I used SQLite because it is default, requires no setup and this is only a small task. Normally I would use PostgreSQL.
4. I seeded the database with the data shown in excercise 3.
5. There is an image of the completed task in SilverMarket/app/assets/images/completed_task_image.png
6. I've shortened some of the naming of things, as I'm not a fan of long names for things. Happy to follow consensus in the real world though. 'price per kg' = price, order quantity = quantity.
7. order_type is otype (type is a reserved word for single table inheritance in Rails) and is an enum because it is a Rails standard, is easy to query and Rails has some nice functionality that supports it. There are alternatives to this approach but they all have more issues I believe.
8. BUY/SELL sorting was done by firing off two qieries and then merging into an array, see orders_controller#index (@order_summary = query_1 + query_2)

Setup
1. Install Ruby 3.1.2
2. Install bundler
3. bundle
4. rails db:create
5. rails db:migrate
6. rails db:seed
7. rails s
8. go to http://localhost:3000/
9. Alternatively see the completed_task_image.png image saved in the directory.

Interview exercise - Explanation

Please read the instructions below and complete the exercise to the best of your abilities
Imagine you're working as a programmer for a company called Silver Bars Marketplace and you have just received a new requirement.

In it we would like to display to our users how much demand for silver bars there is on the market.
To do this we would like to have a 'Live Order Board', that could provide us with the following functionality:

1) Register an order. Order must contain these fields:
- user id
- order quantity (e.g.: 3.5 kg)
- price per kg (e.g.: £303)
- order type: BUY or SELL

2) Cancel a registered order - this will remove the order from 'Live Order Board'

3) Get summary information of live orders (see explanation below)

Imagine we have received the following orders:
a) SELL: 3.5 kg for £306 [user1]
b) SELL: 1.2 kg for £310 [user2]
c) SELL: 1.5 kg for £307 [user3]
d) SELL: 2.0 kg for £306 [user4]

Our ‘Live Order Board’ should provide us the following summary information:

- 5.5 kg for £306 // order a) + order d)
- 1.5 kg for £307 // order c)
- 1.2 kg for £310 // order b)

The first thing to note here is that orders for the same price should be merged together (even when they are from different users). In this case it can be seen that order a) and d) were for the same amount (£306) and this is why only their sum (5.5 kg) is displayed (for £306) and not the individual orders (3.5 kg and 2.0 kg).

The last thing to note is that for SELL orders the orders with lowest prices are displayed first. Opposite is true for the BUY orders.

Could you please provide us an implementation of the 'Live Order Board'. No database or UI/WEB is needed for this assignment (we're absolutely fine with in memory solution). The only important thing is that you just write it according to your normal standards.

NOTE: if during your implementation you find that something could be designed in multiple different ways, just implement the one which seems most reasonable to you and if you could provide a short (once sentence) reasoning why you choose this way and not
another one, it would be great.

