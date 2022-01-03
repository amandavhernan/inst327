/* Q2 */
USE ap;
SELECT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors
WHERE vendor_id IN
(
	SELECT vendor_id
	FROM vendors
	JOIN invoices
		USING(vendor_id)
	JOIN invoice_line_items
		USING(invoice_id)
	WHERE line_item_amount > 100
)

/* Q3 */
USE ap;
WITH vendors_cte AS
(
	SELECT vendor_id
	FROM vendors
	JOIN invoices
		USING(vendor_id)
	JOIN invoice_line_items
		USING(invoice_id)
	WHERE line_item_amount > 100
) 
SELECT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors
JOIN vendors_cte
	USING(vendor_id)
GROUP BY vendor_name;

/* Q4 */
USE ap;
SELECT vendor_name AS 'Vendor Name', invoice_number AS 'Invoice Number',
CAST(invoice_date AS DATETIME) AS 'Invoice Date/Time', invoice_total AS 'Invoice Total'
FROM vendors JOIN invoices ON invoices.vendor_id = vendors.vendor_id
WHERE invoice_total < 100 AND invoice_date = 
(
	SELECT MAX(invoice_date)
	FROM invoices
	WHERE invoices.vendor_id = vendors.vendor_id
)
ORDER BY invoice_total;

/* Q5 */
USE ap;
SELECT UPPER(vendor_name) AS 'Vendor Name', 
	LOWER(vendor_contact_first_name) AS 'Contact Person', 
    vendor_phone AS 'Vendor Phone',
    MAX(invoice_date) AS 'Latest Invoice'
FROM vendors
JOIN invoices 
	USING(vendor_id)
ORDER BY invoice_date;

Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'ap.vendors.vendor_name'; this is incompatible with sql_mode=only_full_group_by
