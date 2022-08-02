-- write your queries here
SELECT owners.*, vehicles.* FROM owners
    FULL OUTER JOIN vehicles
    ON vehicles.owner_id = owners.id;


SELECT owners.first_name, count(vehicles.*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.id
    ORDER BY owners.first_name;


SELECT o.first_name, ROUND(AVG(v.price),0) AS avg_price, count(*) as count
    FROM owners AS o
    JOIN vehicles AS v ON o.id = v.owner_id
    GROUP BY o.first_name
    HAVING AVG(v.price) > 10000 AND count(*) > 1
    ORDER BY o.first_name DESC;
