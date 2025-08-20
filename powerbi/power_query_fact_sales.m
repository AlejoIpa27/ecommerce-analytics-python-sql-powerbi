let
    Source = Csv.Document(File.Contents("data/processed/fact_sales.csv"),[Delimiter=",", Columns=22, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Promote = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangeTypes = Table.TransformColumnTypes(Promote,{{"order_id", type text},{"product_id", type text},{"quantity", Int64.Type},
        {"unit_price", type number},{"discount", type number},{"cost_ratio", type number},{"line_revenue", type number},{"line_cost", type number},
        {"line_profit", type number},{"customer_id", type text},{"order_datetime", type datetime},{"order_date", type date},
        {"order_month", type text},{"order_year", Int64.Type},{"channel", type text},{"payment_method", type text},{"status", type text},
        {"product_name", type text},{"category", type text},{"city", type text},{"segment", type text},{"signup_date", type date}})
in
    ChangeTypes