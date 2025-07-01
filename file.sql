--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9
-- Dumped by pg_dump version 17.5 (Ubuntu 17.5-0ubuntu0.25.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
-- SET transaction_timeout = 0;  -- Comment out for older PostgreSQL versions (< 14)
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.store_currency DROP CONSTRAINT IF EXISTS store_currency_store_id_foreign;
ALTER TABLE IF EXISTS ONLY public.stock_location DROP CONSTRAINT IF EXISTS stock_location_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_shipping_profile_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_shipping_option_type_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_service_zone_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option_rule DROP CONSTRAINT IF EXISTS shipping_option_rule_shipping_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.service_zone DROP CONSTRAINT IF EXISTS service_zone_fulfillment_set_id_foreign;
ALTER TABLE IF EXISTS ONLY public.return_reason DROP CONSTRAINT IF EXISTS return_reason_parent_return_reason_id_foreign;
ALTER TABLE IF EXISTS ONLY public.reservation_item DROP CONSTRAINT IF EXISTS reservation_item_inventory_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.region_country DROP CONSTRAINT IF EXISTS region_country_region_id_foreign;
ALTER TABLE IF EXISTS ONLY public.refund DROP CONSTRAINT IF EXISTS refund_payment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.provider_identity DROP CONSTRAINT IF EXISTS provider_identity_auth_identity_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_rule_value DROP CONSTRAINT IF EXISTS promotion_rule_value_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_promotion_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion DROP CONSTRAINT IF EXISTS promotion_campaign_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget DROP CONSTRAINT IF EXISTS promotion_campaign_budget_campaign_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_application_method DROP CONSTRAINT IF EXISTS promotion_application_method_promotion_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant DROP CONSTRAINT IF EXISTS product_variant_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_variant_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_option_value_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_type_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_product_tag_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_option_value DROP CONSTRAINT IF EXISTS product_option_value_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_option DROP CONSTRAINT IF EXISTS product_option_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_product_category_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category DROP CONSTRAINT IF EXISTS product_category_parent_category_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price_rule DROP CONSTRAINT IF EXISTS price_rule_price_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_price_set_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_price_list_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price_list_rule DROP CONSTRAINT IF EXISTS price_list_rule_price_list_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_session DROP CONSTRAINT IF EXISTS payment_session_payment_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment DROP CONSTRAINT IF EXISTS payment_payment_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_payment_pro_2d555_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_payment_col_aa276_foreign;
ALTER TABLE IF EXISTS ONLY public.order_transaction DROP CONSTRAINT IF EXISTS order_transaction_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping DROP CONSTRAINT IF EXISTS order_shipping_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_tax_line DROP CONSTRAINT IF EXISTS order_shipping_method_tax_line_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_adjustment DROP CONSTRAINT IF EXISTS order_shipping_method_adjustment_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_shipping_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item DROP CONSTRAINT IF EXISTS order_line_item_totals_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item_tax_line DROP CONSTRAINT IF EXISTS order_line_item_tax_line_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item_adjustment DROP CONSTRAINT IF EXISTS order_line_item_adjustment_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_credit_line DROP CONSTRAINT IF EXISTS order_credit_line_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_change DROP CONSTRAINT IF EXISTS order_change_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_change_action DROP CONSTRAINT IF EXISTS order_change_action_order_change_id_foreign;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_billing_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.notification DROP CONSTRAINT IF EXISTS notification_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.inventory_level DROP CONSTRAINT IF EXISTS inventory_level_inventory_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.image DROP CONSTRAINT IF EXISTS image_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.geo_zone DROP CONSTRAINT IF EXISTS geo_zone_service_zone_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_shipping_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment_label DROP CONSTRAINT IF EXISTS fulfillment_label_fulfillment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment_item DROP CONSTRAINT IF EXISTS fulfillment_item_fulfillment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_delivery_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_customer_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_customer_group_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_address DROP CONSTRAINT IF EXISTS customer_address_customer_id_foreign;
ALTER TABLE IF EXISTS ONLY public.credit_line DROP CONSTRAINT IF EXISTS credit_line_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_tax_line DROP CONSTRAINT IF EXISTS cart_shipping_method_tax_line_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method DROP CONSTRAINT IF EXISTS cart_shipping_method_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_adjustment DROP CONSTRAINT IF EXISTS cart_shipping_method_adjustment_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_shipping_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_tax_line DROP CONSTRAINT IF EXISTS cart_line_item_tax_line_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item DROP CONSTRAINT IF EXISTS cart_line_item_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_adjustment DROP CONSTRAINT IF EXISTS cart_line_item_adjustment_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_billing_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.capture DROP CONSTRAINT IF EXISTS capture_payment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_application_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_application_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS "FK_tax_region_provider_id";
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS "FK_tax_region_parent_id";
ALTER TABLE IF EXISTS ONLY public.tax_rate DROP CONSTRAINT IF EXISTS "FK_tax_rate_tax_region_id";
ALTER TABLE IF EXISTS ONLY public.tax_rate_rule DROP CONSTRAINT IF EXISTS "FK_tax_rate_rule_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_workflow_id_transaction_id_unique";
DROP INDEX IF EXISTS public."IDX_workflow_execution_workflow_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_transaction_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_state";
DROP INDEX IF EXISTS public."IDX_workflow_execution_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_deleted_at";
DROP INDEX IF EXISTS public."IDX_variant_id_52b23597";
DROP INDEX IF EXISTS public."IDX_variant_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_user_email_unique";
DROP INDEX IF EXISTS public."IDX_user_deleted_at";
DROP INDEX IF EXISTS public."IDX_unique_promotion_code";
DROP INDEX IF EXISTS public."IDX_type_value_unique";
DROP INDEX IF EXISTS public."IDX_tax_region_unique_country_province";
DROP INDEX IF EXISTS public."IDX_tax_region_unique_country_nullable_province";
DROP INDEX IF EXISTS public."IDX_tax_region_provider_id";
DROP INDEX IF EXISTS public."IDX_tax_region_parent_id";
DROP INDEX IF EXISTS public."IDX_tax_region_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_rate_tax_region_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_unique_rate_reference";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_reference_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_rate_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_line_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_tax_line_item_id";
DROP INDEX IF EXISTS public."IDX_tag_value_unique";
DROP INDEX IF EXISTS public."IDX_store_deleted_at";
DROP INDEX IF EXISTS public."IDX_store_currency_store_id";
DROP INDEX IF EXISTS public."IDX_store_currency_deleted_at";
DROP INDEX IF EXISTS public."IDX_stock_location_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_stock_location_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_stock_location_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_stock_location_deleted_at";
DROP INDEX IF EXISTS public."IDX_stock_location_address_id_unique";
DROP INDEX IF EXISTS public."IDX_stock_location_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_single_default_region";
DROP INDEX IF EXISTS public."IDX_shipping_profile_name_unique";
DROP INDEX IF EXISTS public."IDX_shipping_profile_id_17a262437";
DROP INDEX IF EXISTS public."IDX_shipping_profile_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_type_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_shipping_profile_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_service_zone_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_rule_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_provider_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_shipping_option_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_method_tax_line_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_shipping_method_option_id";
DROP INDEX IF EXISTS public."IDX_shipping_method_cart_id";
DROP INDEX IF EXISTS public."IDX_shipping_method_adjustment_promotion_id";
DROP INDEX IF EXISTS public."IDX_service_zone_name_unique";
DROP INDEX IF EXISTS public."IDX_service_zone_fulfillment_set_id";
DROP INDEX IF EXISTS public."IDX_service_zone_deleted_at";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_20b454295";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_sales_channel_deleted_at";
DROP INDEX IF EXISTS public."IDX_return_reason_value";
DROP INDEX IF EXISTS public."IDX_return_order_id";
DROP INDEX IF EXISTS public."IDX_return_item_return_id";
DROP INDEX IF EXISTS public."IDX_return_item_reason_id";
DROP INDEX IF EXISTS public."IDX_return_item_item_id";
DROP INDEX IF EXISTS public."IDX_return_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_return_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_return_exchange_id";
DROP INDEX IF EXISTS public."IDX_return_display_id";
DROP INDEX IF EXISTS public."IDX_return_claim_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_location_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_line_item_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_region_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_region_deleted_at";
DROP INDEX IF EXISTS public."IDX_region_country_region_id_iso_2_unique";
DROP INDEX IF EXISTS public."IDX_region_country_region_id";
DROP INDEX IF EXISTS public."IDX_region_country_deleted_at";
DROP INDEX IF EXISTS public."IDX_refund_refund_reason_id";
DROP INDEX IF EXISTS public."IDX_refund_reason_deleted_at";
DROP INDEX IF EXISTS public."IDX_refund_payment_id";
DROP INDEX IF EXISTS public."IDX_refund_deleted_at";
DROP INDEX IF EXISTS public."IDX_publishable_key_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_provider_identity_provider_entity_id";
DROP INDEX IF EXISTS public."IDX_provider_identity_deleted_at";
DROP INDEX IF EXISTS public."IDX_provider_identity_auth_identity_id";
DROP INDEX IF EXISTS public."IDX_promotion_type";
DROP INDEX IF EXISTS public."IDX_promotion_status";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_promotion_rule_id";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_rule_operator";
DROP INDEX IF EXISTS public."IDX_promotion_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_rule_attribute";
DROP INDEX IF EXISTS public."IDX_promotion_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_promotion_id_-71518339";
DROP INDEX IF EXISTS public."IDX_promotion_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_id";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_campaign_identifier_unique";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_campaign_id_unique";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_promotion_id_unique";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_currency_code";
DROP INDEX IF EXISTS public."IDX_product_variant_upc_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_sku_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_product_id";
DROP INDEX IF EXISTS public."IDX_product_variant_ean_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_variant_barcode_unique";
DROP INDEX IF EXISTS public."IDX_product_type_id";
DROP INDEX IF EXISTS public."IDX_product_type_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_tag_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_option_value_option_id";
DROP INDEX IF EXISTS public."IDX_product_option_value_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_option_product_id";
DROP INDEX IF EXISTS public."IDX_product_option_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_image_url";
DROP INDEX IF EXISTS public."IDX_product_id_20b454295";
DROP INDEX IF EXISTS public."IDX_product_id_17a262437";
DROP INDEX IF EXISTS public."IDX_product_handle_unique";
DROP INDEX IF EXISTS public."IDX_product_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_collection_id";
DROP INDEX IF EXISTS public."IDX_product_collection_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_category_path";
DROP INDEX IF EXISTS public."IDX_product_category_parent_category_id";
DROP INDEX IF EXISTS public."IDX_product_category_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_set_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_price_set_id_52b23597";
DROP INDEX IF EXISTS public."IDX_price_set_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_rule_price_id_attribute_operator_unique";
DROP INDEX IF EXISTS public."IDX_price_rule_price_id";
DROP INDEX IF EXISTS public."IDX_price_rule_operator";
DROP INDEX IF EXISTS public."IDX_price_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_price_set_id";
DROP INDEX IF EXISTS public."IDX_price_price_list_id";
DROP INDEX IF EXISTS public."IDX_price_preference_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_preference_attribute_value";
DROP INDEX IF EXISTS public."IDX_price_list_rule_price_list_id";
DROP INDEX IF EXISTS public."IDX_price_list_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_list_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_currency_code";
DROP INDEX IF EXISTS public."IDX_payment_session_payment_collection_id";
DROP INDEX IF EXISTS public."IDX_payment_session_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_provider_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_payment_provider_id";
DROP INDEX IF EXISTS public."IDX_payment_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_payment_session_id_unique";
DROP INDEX IF EXISTS public."IDX_payment_payment_session_id";
DROP INDEX IF EXISTS public."IDX_payment_payment_collection_id";
DROP INDEX IF EXISTS public."IDX_payment_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_collection_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_payment_collection_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_payment_collection_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_transaction_return_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_reference_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_transaction_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_currency_code";
DROP INDEX IF EXISTS public."IDX_order_transaction_claim_id";
DROP INDEX IF EXISTS public."IDX_order_summary_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_summary_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_shipping_return_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_shipping_order_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_tax_line_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_adjustment_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_item_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_shipping_claim_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_address_id";
DROP INDEX IF EXISTS public."IDX_order_region_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_variant_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_tax_line_item_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_product_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_adjustment_item_id";
DROP INDEX IF EXISTS public."IDX_order_item_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_item_order_id";
DROP INDEX IF EXISTS public."IDX_order_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_is_draft_order";
DROP INDEX IF EXISTS public."IDX_order_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_order_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_order_id_-71518339";
DROP INDEX IF EXISTS public."IDX_order_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_order_exchange_return_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_order_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_exchange_display_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_display_id";
DROP INDEX IF EXISTS public."IDX_order_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_customer_id";
DROP INDEX IF EXISTS public."IDX_order_currency_code";
DROP INDEX IF EXISTS public."IDX_order_credit_line_order_id";
DROP INDEX IF EXISTS public."IDX_order_credit_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_return_id";
DROP INDEX IF EXISTS public."IDX_order_claim_order_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_image_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_item_image_claim_item_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_item_claim_id";
DROP INDEX IF EXISTS public."IDX_order_claim_display_id";
DROP INDEX IF EXISTS public."IDX_order_claim_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_status";
DROP INDEX IF EXISTS public."IDX_order_change_return_id";
DROP INDEX IF EXISTS public."IDX_order_change_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_change_order_id";
DROP INDEX IF EXISTS public."IDX_order_change_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_change_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_claim_id";
DROP INDEX IF EXISTS public."IDX_order_change_change_type";
DROP INDEX IF EXISTS public."IDX_order_change_action_return_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_ordering";
DROP INDEX IF EXISTS public."IDX_order_change_action_order_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_order_change_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_action_claim_id";
DROP INDEX IF EXISTS public."IDX_order_billing_address_id";
DROP INDEX IF EXISTS public."IDX_order_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_address_customer_id";
DROP INDEX IF EXISTS public."IDX_option_value_option_id_unique";
DROP INDEX IF EXISTS public."IDX_option_product_id_title_unique";
DROP INDEX IF EXISTS public."IDX_notification_receiver_id";
DROP INDEX IF EXISTS public."IDX_notification_provider_id";
DROP INDEX IF EXISTS public."IDX_notification_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_notification_idempotency_key_unique";
DROP INDEX IF EXISTS public."IDX_notification_deleted_at";
DROP INDEX IF EXISTS public."IDX_line_item_variant_id";
DROP INDEX IF EXISTS public."IDX_line_item_tax_line_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_line_item_product_type_id";
DROP INDEX IF EXISTS public."IDX_line_item_product_id";
DROP INDEX IF EXISTS public."IDX_line_item_cart_id";
DROP INDEX IF EXISTS public."IDX_line_item_adjustment_promotion_id";
DROP INDEX IF EXISTS public."IDX_invite_token";
DROP INDEX IF EXISTS public."IDX_invite_email_unique";
DROP INDEX IF EXISTS public."IDX_invite_deleted_at";
DROP INDEX IF EXISTS public."IDX_inventory_level_location_id_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_location_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_item_location";
DROP INDEX IF EXISTS public."IDX_inventory_level_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_deleted_at";
DROP INDEX IF EXISTS public."IDX_inventory_item_sku";
DROP INDEX IF EXISTS public."IDX_inventory_item_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_inventory_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_image_deleted_at";
DROP INDEX IF EXISTS public."IDX_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_id_52b23597";
DROP INDEX IF EXISTS public."IDX_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_id_20b454295";
DROP INDEX IF EXISTS public."IDX_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_id_17a262437";
DROP INDEX IF EXISTS public."IDX_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_id_-71518339";
DROP INDEX IF EXISTS public."IDX_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_geo_zone_service_zone_id";
DROP INDEX IF EXISTS public."IDX_geo_zone_province_code";
DROP INDEX IF EXISTS public."IDX_geo_zone_deleted_at";
DROP INDEX IF EXISTS public."IDX_geo_zone_country_code";
DROP INDEX IF EXISTS public."IDX_geo_zone_city";
DROP INDEX IF EXISTS public."IDX_fulfillment_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_name_unique";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_provider_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_fulfillment_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_location_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_label_fulfillment_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_label_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_line_item_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_fulfillment_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_fulfillment_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_fulfillment_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_deleted_at_f42b9949";
DROP INDEX IF EXISTS public."IDX_deleted_at_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_deleted_at_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_deleted_at_52b23597";
DROP INDEX IF EXISTS public."IDX_deleted_at_26d06f470";
DROP INDEX IF EXISTS public."IDX_deleted_at_20b454295";
DROP INDEX IF EXISTS public."IDX_deleted_at_1c934dab0";
DROP INDEX IF EXISTS public."IDX_deleted_at_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_deleted_at_17a262437";
DROP INDEX IF EXISTS public."IDX_deleted_at_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_deleted_at_-e88adb96";
DROP INDEX IF EXISTS public."IDX_deleted_at_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_deleted_at_-71518339";
DROP INDEX IF EXISTS public."IDX_deleted_at_-71069c16";
DROP INDEX IF EXISTS public."IDX_deleted_at_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_deleted_at_-31ea43a";
DROP INDEX IF EXISTS public."IDX_deleted_at_-1e5992737";
DROP INDEX IF EXISTS public."IDX_deleted_at_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_customer_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_customer_group_name_unique";
DROP INDEX IF EXISTS public."IDX_customer_group_name";
DROP INDEX IF EXISTS public."IDX_customer_group_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_customer_id";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_customer_group_id";
DROP INDEX IF EXISTS public."IDX_customer_email_has_account_unique";
DROP INDEX IF EXISTS public."IDX_customer_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_address_unique_customer_shipping";
DROP INDEX IF EXISTS public."IDX_customer_address_unique_customer_billing";
DROP INDEX IF EXISTS public."IDX_customer_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_address_customer_id";
DROP INDEX IF EXISTS public."IDX_credit_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_credit_line_cart_id";
DROP INDEX IF EXISTS public."IDX_collection_handle_unique";
DROP INDEX IF EXISTS public."IDX_category_handle_unique";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_tax_line_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_tax_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_cart_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_adjustment_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_adjustment_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_address_id";
DROP INDEX IF EXISTS public."IDX_cart_sales_channel_id";
DROP INDEX IF EXISTS public."IDX_cart_region_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_tax_line_item_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_tax_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_line_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_line_item_cart_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_adjustment_item_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_adjustment_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_cart_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_cart_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_cart_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_customer_id";
DROP INDEX IF EXISTS public."IDX_cart_currency_code";
DROP INDEX IF EXISTS public."IDX_cart_credit_line_reference_reference_id";
DROP INDEX IF EXISTS public."IDX_cart_billing_address_id";
DROP INDEX IF EXISTS public."IDX_cart_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_capture_payment_id";
DROP INDEX IF EXISTS public."IDX_capture_deleted_at";
DROP INDEX IF EXISTS public."IDX_campaign_budget_type";
DROP INDEX IF EXISTS public."IDX_auth_identity_deleted_at";
DROP INDEX IF EXISTS public."IDX_application_method_type";
DROP INDEX IF EXISTS public."IDX_application_method_target_type";
DROP INDEX IF EXISTS public."IDX_application_method_allocation";
DROP INDEX IF EXISTS public."IDX_api_key_type";
DROP INDEX IF EXISTS public."IDX_api_key_token_unique";
DROP INDEX IF EXISTS public."IDX_api_key_deleted_at";
DROP INDEX IF EXISTS public."IDX_adjustment_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_adjustment_item_id";
DROP INDEX IF EXISTS public."IDX_account_holder_provider_id_external_id_unique";
DROP INDEX IF EXISTS public."IDX_account_holder_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_account_holder_deleted_at";
ALTER TABLE IF EXISTS ONLY public."user" DROP CONSTRAINT IF EXISTS user_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS tax_region_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_rate_rule DROP CONSTRAINT IF EXISTS tax_rate_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_rate DROP CONSTRAINT IF EXISTS tax_rate_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_provider DROP CONSTRAINT IF EXISTS tax_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.store DROP CONSTRAINT IF EXISTS store_pkey;
ALTER TABLE IF EXISTS ONLY public.store_currency DROP CONSTRAINT IF EXISTS store_currency_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_location DROP CONSTRAINT IF EXISTS stock_location_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_location_address DROP CONSTRAINT IF EXISTS stock_location_address_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_profile DROP CONSTRAINT IF EXISTS shipping_profile_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_type DROP CONSTRAINT IF EXISTS shipping_option_type_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_rule DROP CONSTRAINT IF EXISTS shipping_option_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_price_set DROP CONSTRAINT IF EXISTS shipping_option_price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_pkey;
ALTER TABLE IF EXISTS ONLY public.service_zone DROP CONSTRAINT IF EXISTS service_zone_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_channel_stock_location DROP CONSTRAINT IF EXISTS sales_channel_stock_location_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_channel DROP CONSTRAINT IF EXISTS sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.return_reason DROP CONSTRAINT IF EXISTS return_reason_pkey;
ALTER TABLE IF EXISTS ONLY public.return DROP CONSTRAINT IF EXISTS return_pkey;
ALTER TABLE IF EXISTS ONLY public.return_item DROP CONSTRAINT IF EXISTS return_item_pkey;
ALTER TABLE IF EXISTS ONLY public.return_fulfillment DROP CONSTRAINT IF EXISTS return_fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.reservation_item DROP CONSTRAINT IF EXISTS reservation_item_pkey;
ALTER TABLE IF EXISTS ONLY public.region DROP CONSTRAINT IF EXISTS region_pkey;
ALTER TABLE IF EXISTS ONLY public.region_payment_provider DROP CONSTRAINT IF EXISTS region_payment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.region_country DROP CONSTRAINT IF EXISTS region_country_pkey;
ALTER TABLE IF EXISTS ONLY public.refund_reason DROP CONSTRAINT IF EXISTS refund_reason_pkey;
ALTER TABLE IF EXISTS ONLY public.refund DROP CONSTRAINT IF EXISTS refund_pkey;
ALTER TABLE IF EXISTS ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT IF EXISTS publishable_api_key_sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.provider_identity DROP CONSTRAINT IF EXISTS provider_identity_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_rule_value DROP CONSTRAINT IF EXISTS promotion_rule_value_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_rule DROP CONSTRAINT IF EXISTS promotion_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion DROP CONSTRAINT IF EXISTS promotion_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign DROP CONSTRAINT IF EXISTS promotion_campaign_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget DROP CONSTRAINT IF EXISTS promotion_campaign_budget_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_application_method DROP CONSTRAINT IF EXISTS promotion_application_method_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_price_set DROP CONSTRAINT IF EXISTS product_variant_price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant DROP CONSTRAINT IF EXISTS product_variant_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_inventory_item DROP CONSTRAINT IF EXISTS product_variant_inventory_item_pkey;
ALTER TABLE IF EXISTS ONLY public.product_type DROP CONSTRAINT IF EXISTS product_type_pkey;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_pkey;
ALTER TABLE IF EXISTS ONLY public.product_tag DROP CONSTRAINT IF EXISTS product_tag_pkey;
ALTER TABLE IF EXISTS ONLY public.product_shipping_profile DROP CONSTRAINT IF EXISTS product_shipping_profile_pkey;
ALTER TABLE IF EXISTS ONLY public.product_sales_channel DROP CONSTRAINT IF EXISTS product_sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_pkey;
ALTER TABLE IF EXISTS ONLY public.product_option_value DROP CONSTRAINT IF EXISTS product_option_value_pkey;
ALTER TABLE IF EXISTS ONLY public.product_option DROP CONSTRAINT IF EXISTS product_option_pkey;
ALTER TABLE IF EXISTS ONLY public.product_collection DROP CONSTRAINT IF EXISTS product_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_pkey;
ALTER TABLE IF EXISTS ONLY public.product_category DROP CONSTRAINT IF EXISTS product_category_pkey;
ALTER TABLE IF EXISTS ONLY public.price_set DROP CONSTRAINT IF EXISTS price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.price_rule DROP CONSTRAINT IF EXISTS price_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.price_preference DROP CONSTRAINT IF EXISTS price_preference_pkey;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_pkey;
ALTER TABLE IF EXISTS ONLY public.price_list_rule DROP CONSTRAINT IF EXISTS price_list_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.price_list DROP CONSTRAINT IF EXISTS price_list_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_session DROP CONSTRAINT IF EXISTS payment_session_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_provider DROP CONSTRAINT IF EXISTS payment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.payment DROP CONSTRAINT IF EXISTS payment_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_collection DROP CONSTRAINT IF EXISTS payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_pkey;
ALTER TABLE IF EXISTS ONLY public.order_transaction DROP CONSTRAINT IF EXISTS order_transaction_pkey;
ALTER TABLE IF EXISTS ONLY public.order_summary DROP CONSTRAINT IF EXISTS order_summary_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping DROP CONSTRAINT IF EXISTS order_shipping_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_tax_line DROP CONSTRAINT IF EXISTS order_shipping_method_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method DROP CONSTRAINT IF EXISTS order_shipping_method_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_adjustment DROP CONSTRAINT IF EXISTS order_shipping_method_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_promotion DROP CONSTRAINT IF EXISTS order_promotion_pkey;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_pkey;
ALTER TABLE IF EXISTS ONLY public.order_payment_collection DROP CONSTRAINT IF EXISTS order_payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item_tax_line DROP CONSTRAINT IF EXISTS order_line_item_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item DROP CONSTRAINT IF EXISTS order_line_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item_adjustment DROP CONSTRAINT IF EXISTS order_line_item_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_fulfillment DROP CONSTRAINT IF EXISTS order_fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_exchange DROP CONSTRAINT IF EXISTS order_exchange_pkey;
ALTER TABLE IF EXISTS ONLY public.order_exchange_item DROP CONSTRAINT IF EXISTS order_exchange_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_credit_line DROP CONSTRAINT IF EXISTS order_credit_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim DROP CONSTRAINT IF EXISTS order_claim_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim_item DROP CONSTRAINT IF EXISTS order_claim_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim_item_image DROP CONSTRAINT IF EXISTS order_claim_item_image_pkey;
ALTER TABLE IF EXISTS ONLY public.order_change DROP CONSTRAINT IF EXISTS order_change_pkey;
ALTER TABLE IF EXISTS ONLY public.order_change_action DROP CONSTRAINT IF EXISTS order_change_action_pkey;
ALTER TABLE IF EXISTS ONLY public.order_cart DROP CONSTRAINT IF EXISTS order_cart_pkey;
ALTER TABLE IF EXISTS ONLY public.order_address DROP CONSTRAINT IF EXISTS order_address_pkey;
ALTER TABLE IF EXISTS ONLY public.notification_provider DROP CONSTRAINT IF EXISTS notification_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.notification DROP CONSTRAINT IF EXISTS notification_pkey;
ALTER TABLE IF EXISTS ONLY public.mikro_orm_migrations DROP CONSTRAINT IF EXISTS mikro_orm_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.location_fulfillment_set DROP CONSTRAINT IF EXISTS location_fulfillment_set_pkey;
ALTER TABLE IF EXISTS ONLY public.location_fulfillment_provider DROP CONSTRAINT IF EXISTS location_fulfillment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.link_module_migrations DROP CONSTRAINT IF EXISTS link_module_migrations_table_name_key;
ALTER TABLE IF EXISTS ONLY public.link_module_migrations DROP CONSTRAINT IF EXISTS link_module_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.invite DROP CONSTRAINT IF EXISTS invite_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_level DROP CONSTRAINT IF EXISTS inventory_level_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_item DROP CONSTRAINT IF EXISTS inventory_item_pkey;
ALTER TABLE IF EXISTS ONLY public.image DROP CONSTRAINT IF EXISTS image_pkey;
ALTER TABLE IF EXISTS ONLY public.geo_zone DROP CONSTRAINT IF EXISTS geo_zone_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_set DROP CONSTRAINT IF EXISTS fulfillment_set_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_provider DROP CONSTRAINT IF EXISTS fulfillment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_label DROP CONSTRAINT IF EXISTS fulfillment_label_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_item DROP CONSTRAINT IF EXISTS fulfillment_item_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_address DROP CONSTRAINT IF EXISTS fulfillment_address_pkey;
ALTER TABLE IF EXISTS ONLY public.customer DROP CONSTRAINT IF EXISTS customer_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_group DROP CONSTRAINT IF EXISTS customer_group_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_address DROP CONSTRAINT IF EXISTS customer_address_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_account_holder DROP CONSTRAINT IF EXISTS customer_account_holder_pkey;
ALTER TABLE IF EXISTS ONLY public.currency DROP CONSTRAINT IF EXISTS currency_pkey;
ALTER TABLE IF EXISTS ONLY public.credit_line DROP CONSTRAINT IF EXISTS credit_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_tax_line DROP CONSTRAINT IF EXISTS cart_shipping_method_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method DROP CONSTRAINT IF EXISTS cart_shipping_method_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_adjustment DROP CONSTRAINT IF EXISTS cart_shipping_method_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_promotion DROP CONSTRAINT IF EXISTS cart_promotion_pkey;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_payment_collection DROP CONSTRAINT IF EXISTS cart_payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_tax_line DROP CONSTRAINT IF EXISTS cart_line_item_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item DROP CONSTRAINT IF EXISTS cart_line_item_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_adjustment DROP CONSTRAINT IF EXISTS cart_line_item_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_address DROP CONSTRAINT IF EXISTS cart_address_pkey;
ALTER TABLE IF EXISTS ONLY public.capture DROP CONSTRAINT IF EXISTS capture_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_identity DROP CONSTRAINT IF EXISTS auth_identity_pkey;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_pkey;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_pkey;
ALTER TABLE IF EXISTS ONLY public.api_key DROP CONSTRAINT IF EXISTS api_key_pkey;
ALTER TABLE IF EXISTS ONLY public.account_holder DROP CONSTRAINT IF EXISTS account_holder_pkey;
ALTER TABLE IF EXISTS ONLY public.workflow_execution DROP CONSTRAINT IF EXISTS "PK_workflow_execution_workflow_id_transaction_id";
ALTER TABLE IF EXISTS public.return ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_exchange ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_claim ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_change_action ALTER COLUMN ordering DROP DEFAULT;
ALTER TABLE IF EXISTS public."order" ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.mikro_orm_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.link_module_migrations ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.workflow_execution;
DROP TABLE IF EXISTS public."user";
DROP TABLE IF EXISTS public.tax_region;
DROP TABLE IF EXISTS public.tax_rate_rule;
DROP TABLE IF EXISTS public.tax_rate;
DROP TABLE IF EXISTS public.tax_provider;
DROP TABLE IF EXISTS public.store_currency;
DROP TABLE IF EXISTS public.store;
DROP TABLE IF EXISTS public.stock_location_address;
DROP TABLE IF EXISTS public.stock_location;
DROP TABLE IF EXISTS public.shipping_profile;
DROP TABLE IF EXISTS public.shipping_option_type;
DROP TABLE IF EXISTS public.shipping_option_rule;
DROP TABLE IF EXISTS public.shipping_option_price_set;
DROP TABLE IF EXISTS public.shipping_option;
DROP TABLE IF EXISTS public.service_zone;
DROP TABLE IF EXISTS public.sales_channel_stock_location;
DROP TABLE IF EXISTS public.sales_channel;
DROP TABLE IF EXISTS public.return_reason;
DROP TABLE IF EXISTS public.return_item;
DROP TABLE IF EXISTS public.return_fulfillment;
DROP SEQUENCE IF EXISTS public.return_display_id_seq;
DROP TABLE IF EXISTS public.return;
DROP TABLE IF EXISTS public.reservation_item;
DROP TABLE IF EXISTS public.region_payment_provider;
DROP TABLE IF EXISTS public.region_country;
DROP TABLE IF EXISTS public.region;
DROP TABLE IF EXISTS public.refund_reason;
DROP TABLE IF EXISTS public.refund;
DROP TABLE IF EXISTS public.publishable_api_key_sales_channel;
DROP TABLE IF EXISTS public.provider_identity;
DROP TABLE IF EXISTS public.promotion_rule_value;
DROP TABLE IF EXISTS public.promotion_rule;
DROP TABLE IF EXISTS public.promotion_promotion_rule;
DROP TABLE IF EXISTS public.promotion_campaign_budget;
DROP TABLE IF EXISTS public.promotion_campaign;
DROP TABLE IF EXISTS public.promotion_application_method;
DROP TABLE IF EXISTS public.promotion;
DROP TABLE IF EXISTS public.product_variant_price_set;
DROP TABLE IF EXISTS public.product_variant_option;
DROP TABLE IF EXISTS public.product_variant_inventory_item;
DROP TABLE IF EXISTS public.product_variant;
DROP TABLE IF EXISTS public.product_type;
DROP TABLE IF EXISTS public.product_tags;
DROP TABLE IF EXISTS public.product_tag;
DROP TABLE IF EXISTS public.product_shipping_profile;
DROP TABLE IF EXISTS public.product_sales_channel;
DROP TABLE IF EXISTS public.product_option_value;
DROP TABLE IF EXISTS public.product_option;
DROP TABLE IF EXISTS public.product_collection;
DROP TABLE IF EXISTS public.product_category_product;
DROP TABLE IF EXISTS public.product_category;
DROP TABLE IF EXISTS public.product;
DROP TABLE IF EXISTS public.price_set;
DROP TABLE IF EXISTS public.price_rule;
DROP TABLE IF EXISTS public.price_preference;
DROP TABLE IF EXISTS public.price_list_rule;
DROP TABLE IF EXISTS public.price_list;
DROP TABLE IF EXISTS public.price;
DROP TABLE IF EXISTS public.payment_session;
DROP TABLE IF EXISTS public.payment_provider;
DROP TABLE IF EXISTS public.payment_collection_payment_providers;
DROP TABLE IF EXISTS public.payment_collection;
DROP TABLE IF EXISTS public.payment;
DROP TABLE IF EXISTS public.order_transaction;
DROP TABLE IF EXISTS public.order_summary;
DROP TABLE IF EXISTS public.order_shipping_method_tax_line;
DROP TABLE IF EXISTS public.order_shipping_method_adjustment;
DROP TABLE IF EXISTS public.order_shipping_method;
DROP TABLE IF EXISTS public.order_shipping;
DROP TABLE IF EXISTS public.order_promotion;
DROP TABLE IF EXISTS public.order_payment_collection;
DROP TABLE IF EXISTS public.order_line_item_tax_line;
DROP TABLE IF EXISTS public.order_line_item_adjustment;
DROP TABLE IF EXISTS public.order_line_item;
DROP TABLE IF EXISTS public.order_item;
DROP TABLE IF EXISTS public.order_fulfillment;
DROP TABLE IF EXISTS public.order_exchange_item;
DROP SEQUENCE IF EXISTS public.order_exchange_display_id_seq;
DROP TABLE IF EXISTS public.order_exchange;
DROP SEQUENCE IF EXISTS public.order_display_id_seq;
DROP TABLE IF EXISTS public.order_credit_line;
DROP TABLE IF EXISTS public.order_claim_item_image;
DROP TABLE IF EXISTS public.order_claim_item;
DROP SEQUENCE IF EXISTS public.order_claim_display_id_seq;
DROP TABLE IF EXISTS public.order_claim;
DROP SEQUENCE IF EXISTS public.order_change_action_ordering_seq;
DROP TABLE IF EXISTS public.order_change_action;
DROP TABLE IF EXISTS public.order_change;
DROP TABLE IF EXISTS public.order_cart;
DROP TABLE IF EXISTS public.order_address;
DROP TABLE IF EXISTS public."order";
DROP TABLE IF EXISTS public.notification_provider;
DROP TABLE IF EXISTS public.notification;
DROP SEQUENCE IF EXISTS public.mikro_orm_migrations_id_seq;
DROP TABLE IF EXISTS public.mikro_orm_migrations;
DROP TABLE IF EXISTS public.location_fulfillment_set;
DROP TABLE IF EXISTS public.location_fulfillment_provider;
DROP SEQUENCE IF EXISTS public.link_module_migrations_id_seq;
DROP TABLE IF EXISTS public.link_module_migrations;
DROP TABLE IF EXISTS public.invite;
DROP TABLE IF EXISTS public.inventory_level;
DROP TABLE IF EXISTS public.inventory_item;
DROP TABLE IF EXISTS public.image;
DROP TABLE IF EXISTS public.geo_zone;
DROP TABLE IF EXISTS public.fulfillment_set;
DROP TABLE IF EXISTS public.fulfillment_provider;
DROP TABLE IF EXISTS public.fulfillment_label;
DROP TABLE IF EXISTS public.fulfillment_item;
DROP TABLE IF EXISTS public.fulfillment_address;
DROP TABLE IF EXISTS public.fulfillment;
DROP TABLE IF EXISTS public.customer_group_customer;
DROP TABLE IF EXISTS public.customer_group;
DROP TABLE IF EXISTS public.customer_address;
DROP TABLE IF EXISTS public.customer_account_holder;
DROP TABLE IF EXISTS public.customer;
DROP TABLE IF EXISTS public.currency;
DROP TABLE IF EXISTS public.credit_line;
DROP TABLE IF EXISTS public.cart_shipping_method_tax_line;
DROP TABLE IF EXISTS public.cart_shipping_method_adjustment;
DROP TABLE IF EXISTS public.cart_shipping_method;
DROP TABLE IF EXISTS public.cart_promotion;
DROP TABLE IF EXISTS public.cart_payment_collection;
DROP TABLE IF EXISTS public.cart_line_item_tax_line;
DROP TABLE IF EXISTS public.cart_line_item_adjustment;
DROP TABLE IF EXISTS public.cart_line_item;
DROP TABLE IF EXISTS public.cart_address;
DROP TABLE IF EXISTS public.cart;
DROP TABLE IF EXISTS public.capture;
DROP TABLE IF EXISTS public.auth_identity;
DROP TABLE IF EXISTS public.application_method_target_rules;
DROP TABLE IF EXISTS public.application_method_buy_rules;
DROP TABLE IF EXISTS public.api_key;
DROP TABLE IF EXISTS public.account_holder;
DROP TYPE IF EXISTS public.return_status_enum;
DROP TYPE IF EXISTS public.order_status_enum;
DROP TYPE IF EXISTS public.order_claim_type_enum;
DROP TYPE IF EXISTS public.claim_reason_enum;
--
-- Name: claim_reason_enum; Type: TYPE; Schema: public; Owner: superuser
--

CREATE TYPE public.claim_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);


ALTER TYPE public.claim_reason_enum OWNER TO superuser;

--
-- Name: order_claim_type_enum; Type: TYPE; Schema: public; Owner: superuser
--

CREATE TYPE public.order_claim_type_enum AS ENUM (
    'refund',
    'replace'
);


ALTER TYPE public.order_claim_type_enum OWNER TO superuser;

--
-- Name: order_status_enum; Type: TYPE; Schema: public; Owner: superuser
--

CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'draft',
    'archived',
    'canceled',
    'requires_action'
);


ALTER TYPE public.order_status_enum OWNER TO superuser;

--
-- Name: return_status_enum; Type: TYPE; Schema: public; Owner: superuser
--

CREATE TYPE public.return_status_enum AS ENUM (
    'open',
    'requested',
    'received',
    'partially_received',
    'canceled'
);


ALTER TYPE public.return_status_enum OWNER TO superuser;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_holder; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.account_holder (
    id text NOT NULL,
    provider_id text NOT NULL,
    external_id text NOT NULL,
    email text,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.account_holder OWNER TO superuser;

--
-- Name: api_key; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.api_key (
    id text NOT NULL,
    token text NOT NULL,
    salt text NOT NULL,
    redacted text NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    last_used_at timestamp with time zone,
    created_by text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_by text,
    revoked_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT api_key_type_check CHECK ((type = ANY (ARRAY['publishable'::text, 'secret'::text])))
);


ALTER TABLE public.api_key OWNER TO superuser;

--
-- Name: application_method_buy_rules; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.application_method_buy_rules (
    application_method_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


ALTER TABLE public.application_method_buy_rules OWNER TO superuser;

--
-- Name: application_method_target_rules; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.application_method_target_rules (
    application_method_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


ALTER TABLE public.application_method_target_rules OWNER TO superuser;

--
-- Name: auth_identity; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.auth_identity (
    id text NOT NULL,
    app_metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.auth_identity OWNER TO superuser;

--
-- Name: capture; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.capture (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    payment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text,
    metadata jsonb
);


ALTER TABLE public.capture OWNER TO superuser;

--
-- Name: cart; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart (
    id text NOT NULL,
    region_id text,
    customer_id text,
    sales_channel_id text,
    email text,
    currency_code text NOT NULL,
    shipping_address_id text,
    billing_address_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    completed_at timestamp with time zone
);


ALTER TABLE public.cart OWNER TO superuser;

--
-- Name: cart_address; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_address (
    id text NOT NULL,
    customer_id text,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.cart_address OWNER TO superuser;

--
-- Name: cart_line_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_line_item (
    id text NOT NULL,
    cart_id text NOT NULL,
    title text NOT NULL,
    subtitle text,
    thumbnail text,
    quantity integer NOT NULL,
    variant_id text,
    product_id text,
    product_title text,
    product_description text,
    product_subtitle text,
    product_type text,
    product_collection text,
    product_handle text,
    variant_sku text,
    variant_barcode text,
    variant_title text,
    variant_option_values jsonb,
    requires_shipping boolean DEFAULT true NOT NULL,
    is_discountable boolean DEFAULT true NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb,
    unit_price numeric NOT NULL,
    raw_unit_price jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    product_type_id text,
    is_custom_price boolean DEFAULT false NOT NULL,
    CONSTRAINT cart_line_item_unit_price_check CHECK ((unit_price >= (0)::numeric))
);


ALTER TABLE public.cart_line_item OWNER TO superuser;

--
-- Name: cart_line_item_adjustment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_line_item_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    item_id text,
    CONSTRAINT cart_line_item_adjustment_check CHECK ((amount >= (0)::numeric))
);


ALTER TABLE public.cart_line_item_adjustment OWNER TO superuser;

--
-- Name: cart_line_item_tax_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_line_item_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate real NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    item_id text
);


ALTER TABLE public.cart_line_item_tax_line OWNER TO superuser;

--
-- Name: cart_payment_collection; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_payment_collection (
    cart_id character varying(255) NOT NULL,
    payment_collection_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.cart_payment_collection OWNER TO superuser;

--
-- Name: cart_promotion; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_promotion (
    cart_id character varying(255) NOT NULL,
    promotion_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.cart_promotion OWNER TO superuser;

--
-- Name: cart_shipping_method; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_shipping_method (
    id text NOT NULL,
    cart_id text NOT NULL,
    name text NOT NULL,
    description jsonb,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    shipping_option_id text,
    data jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT cart_shipping_method_check CHECK ((amount >= (0)::numeric))
);


ALTER TABLE public.cart_shipping_method OWNER TO superuser;

--
-- Name: cart_shipping_method_adjustment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_shipping_method_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    shipping_method_id text
);


ALTER TABLE public.cart_shipping_method_adjustment OWNER TO superuser;

--
-- Name: cart_shipping_method_tax_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.cart_shipping_method_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate real NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    shipping_method_id text
);


ALTER TABLE public.cart_shipping_method_tax_line OWNER TO superuser;

--
-- Name: credit_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.credit_line (
    id text NOT NULL,
    cart_id text NOT NULL,
    reference text,
    reference_id text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.credit_line OWNER TO superuser;

--
-- Name: currency; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.currency (
    code text NOT NULL,
    symbol text NOT NULL,
    symbol_native text NOT NULL,
    decimal_digits integer DEFAULT 0 NOT NULL,
    rounding numeric DEFAULT 0 NOT NULL,
    raw_rounding jsonb NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.currency OWNER TO superuser;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.customer (
    id text NOT NULL,
    company_name text,
    first_name text,
    last_name text,
    email text,
    phone text,
    has_account boolean DEFAULT false NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text
);


ALTER TABLE public.customer OWNER TO superuser;

--
-- Name: customer_account_holder; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.customer_account_holder (
    customer_id character varying(255) NOT NULL,
    account_holder_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.customer_account_holder OWNER TO superuser;

--
-- Name: customer_address; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.customer_address (
    id text NOT NULL,
    customer_id text NOT NULL,
    address_name text,
    is_default_shipping boolean DEFAULT false NOT NULL,
    is_default_billing boolean DEFAULT false NOT NULL,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.customer_address OWNER TO superuser;

--
-- Name: customer_group; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.customer_group (
    id text NOT NULL,
    name text NOT NULL,
    metadata jsonb,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.customer_group OWNER TO superuser;

--
-- Name: customer_group_customer; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.customer_group_customer (
    id text NOT NULL,
    customer_id text NOT NULL,
    customer_group_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


ALTER TABLE public.customer_group_customer OWNER TO superuser;

--
-- Name: fulfillment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment (
    id text NOT NULL,
    location_id text NOT NULL,
    packed_at timestamp with time zone,
    shipped_at timestamp with time zone,
    delivered_at timestamp with time zone,
    canceled_at timestamp with time zone,
    data jsonb,
    provider_id text,
    shipping_option_id text,
    metadata jsonb,
    delivery_address_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    marked_shipped_by text,
    created_by text,
    requires_shipping boolean DEFAULT true NOT NULL
);


ALTER TABLE public.fulfillment OWNER TO superuser;

--
-- Name: fulfillment_address; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment_address (
    id text NOT NULL,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.fulfillment_address OWNER TO superuser;

--
-- Name: fulfillment_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment_item (
    id text NOT NULL,
    title text NOT NULL,
    sku text NOT NULL,
    barcode text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    line_item_id text,
    inventory_item_id text,
    fulfillment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.fulfillment_item OWNER TO superuser;

--
-- Name: fulfillment_label; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment_label (
    id text NOT NULL,
    tracking_number text NOT NULL,
    tracking_url text NOT NULL,
    label_url text NOT NULL,
    fulfillment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.fulfillment_label OWNER TO superuser;

--
-- Name: fulfillment_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.fulfillment_provider OWNER TO superuser;

--
-- Name: fulfillment_set; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.fulfillment_set (
    id text NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.fulfillment_set OWNER TO superuser;

--
-- Name: geo_zone; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.geo_zone (
    id text NOT NULL,
    type text DEFAULT 'country'::text NOT NULL,
    country_code text NOT NULL,
    province_code text,
    city text,
    service_zone_id text NOT NULL,
    postal_expression jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT geo_zone_type_check CHECK ((type = ANY (ARRAY['country'::text, 'province'::text, 'city'::text, 'zip'::text])))
);


ALTER TABLE public.geo_zone OWNER TO superuser;

--
-- Name: image; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.image (
    id text NOT NULL,
    url text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    rank integer DEFAULT 0 NOT NULL,
    product_id text NOT NULL
);


ALTER TABLE public.image OWNER TO superuser;

--
-- Name: inventory_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.inventory_item (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    sku text,
    origin_country text,
    hs_code text,
    mid_code text,
    material text,
    weight integer,
    length integer,
    height integer,
    width integer,
    requires_shipping boolean DEFAULT true NOT NULL,
    description text,
    title text,
    thumbnail text,
    metadata jsonb
);


ALTER TABLE public.inventory_item OWNER TO superuser;

--
-- Name: inventory_level; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.inventory_level (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    inventory_item_id text NOT NULL,
    location_id text NOT NULL,
    stocked_quantity numeric DEFAULT 0 NOT NULL,
    reserved_quantity numeric DEFAULT 0 NOT NULL,
    incoming_quantity numeric DEFAULT 0 NOT NULL,
    metadata jsonb,
    raw_stocked_quantity jsonb,
    raw_reserved_quantity jsonb,
    raw_incoming_quantity jsonb
);


ALTER TABLE public.inventory_level OWNER TO superuser;

--
-- Name: invite; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.invite (
    id text NOT NULL,
    email text NOT NULL,
    accepted boolean DEFAULT false NOT NULL,
    token text NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.invite OWNER TO superuser;

--
-- Name: link_module_migrations; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.link_module_migrations (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    link_descriptor jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.link_module_migrations OWNER TO superuser;

--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.link_module_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.link_module_migrations_id_seq OWNER TO superuser;

--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.link_module_migrations_id_seq OWNED BY public.link_module_migrations.id;


--
-- Name: location_fulfillment_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.location_fulfillment_provider (
    stock_location_id character varying(255) NOT NULL,
    fulfillment_provider_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.location_fulfillment_provider OWNER TO superuser;

--
-- Name: location_fulfillment_set; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.location_fulfillment_set (
    stock_location_id character varying(255) NOT NULL,
    fulfillment_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.location_fulfillment_set OWNER TO superuser;

--
-- Name: mikro_orm_migrations; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.mikro_orm_migrations (
    id integer NOT NULL,
    name character varying(255),
    executed_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mikro_orm_migrations OWNER TO superuser;

--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.mikro_orm_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mikro_orm_migrations_id_seq OWNER TO superuser;

--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.mikro_orm_migrations_id_seq OWNED BY public.mikro_orm_migrations.id;


--
-- Name: notification; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.notification (
    id text NOT NULL,
    "to" text NOT NULL,
    channel text NOT NULL,
    template text NOT NULL,
    data jsonb,
    trigger_type text,
    resource_id text,
    resource_type text,
    receiver_id text,
    original_notification_id text,
    idempotency_key text,
    external_id text,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    status text DEFAULT 'pending'::text NOT NULL,
    CONSTRAINT notification_status_check CHECK ((status = ANY (ARRAY['pending'::text, 'success'::text, 'failure'::text])))
);


ALTER TABLE public.notification OWNER TO superuser;

--
-- Name: notification_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.notification_provider (
    id text NOT NULL,
    handle text NOT NULL,
    name text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    channels text[] DEFAULT '{}'::text[] NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.notification_provider OWNER TO superuser;

--
-- Name: order; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public."order" (
    id text NOT NULL,
    region_id text,
    display_id integer,
    customer_id text,
    version integer DEFAULT 1 NOT NULL,
    sales_channel_id text,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    is_draft_order boolean DEFAULT false NOT NULL,
    email text,
    currency_code text NOT NULL,
    shipping_address_id text,
    billing_address_id text,
    no_notification boolean,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone
);


ALTER TABLE public."order" OWNER TO superuser;

--
-- Name: order_address; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_address (
    id text NOT NULL,
    customer_id text,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_address OWNER TO superuser;

--
-- Name: order_cart; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_cart (
    order_id character varying(255) NOT NULL,
    cart_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_cart OWNER TO superuser;

--
-- Name: order_change; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_change (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    description text,
    status text DEFAULT 'pending'::text NOT NULL,
    internal_note text,
    created_by text,
    requested_by text,
    requested_at timestamp with time zone,
    confirmed_by text,
    confirmed_at timestamp with time zone,
    declined_by text,
    declined_reason text,
    metadata jsonb,
    declined_at timestamp with time zone,
    canceled_by text,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    change_type text,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text,
    CONSTRAINT order_change_status_check CHECK ((status = ANY (ARRAY['confirmed'::text, 'declined'::text, 'requested'::text, 'pending'::text, 'canceled'::text])))
);


ALTER TABLE public.order_change OWNER TO superuser;

--
-- Name: order_change_action; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_change_action (
    id text NOT NULL,
    order_id text,
    version integer,
    ordering bigint NOT NULL,
    order_change_id text,
    reference text,
    reference_id text,
    action text NOT NULL,
    details jsonb,
    amount numeric,
    raw_amount jsonb,
    internal_note text,
    applied boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


ALTER TABLE public.order_change_action OWNER TO superuser;

--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.order_change_action_ordering_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_change_action_ordering_seq OWNER TO superuser;

--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.order_change_action_ordering_seq OWNED BY public.order_change_action.ordering;


--
-- Name: order_claim; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_claim (
    id text NOT NULL,
    order_id text NOT NULL,
    return_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    type public.order_claim_type_enum NOT NULL,
    no_notification boolean,
    refund_amount numeric,
    raw_refund_amount jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_by text
);


ALTER TABLE public.order_claim OWNER TO superuser;

--
-- Name: order_claim_display_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.order_claim_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_claim_display_id_seq OWNER TO superuser;

--
-- Name: order_claim_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.order_claim_display_id_seq OWNED BY public.order_claim.display_id;


--
-- Name: order_claim_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_claim_item (
    id text NOT NULL,
    claim_id text NOT NULL,
    item_id text NOT NULL,
    is_additional_item boolean DEFAULT false NOT NULL,
    reason public.claim_reason_enum,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_claim_item OWNER TO superuser;

--
-- Name: order_claim_item_image; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_claim_item_image (
    id text NOT NULL,
    claim_item_id text NOT NULL,
    url text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_claim_item_image OWNER TO superuser;

--
-- Name: order_credit_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_credit_line (
    id text NOT NULL,
    order_id text NOT NULL,
    reference text,
    reference_id text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_credit_line OWNER TO superuser;

--
-- Name: order_display_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_display_id_seq OWNER TO superuser;

--
-- Name: order_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;


--
-- Name: order_exchange; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_exchange (
    id text NOT NULL,
    order_id text NOT NULL,
    return_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    no_notification boolean,
    allow_backorder boolean DEFAULT false NOT NULL,
    difference_due numeric,
    raw_difference_due jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_by text
);


ALTER TABLE public.order_exchange OWNER TO superuser;

--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.order_exchange_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_exchange_display_id_seq OWNER TO superuser;

--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.order_exchange_display_id_seq OWNED BY public.order_exchange.display_id;


--
-- Name: order_exchange_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_exchange_item (
    id text NOT NULL,
    exchange_id text NOT NULL,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_exchange_item OWNER TO superuser;

--
-- Name: order_fulfillment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_fulfillment (
    order_id character varying(255) NOT NULL,
    fulfillment_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_fulfillment OWNER TO superuser;

--
-- Name: order_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_item (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    fulfilled_quantity numeric NOT NULL,
    raw_fulfilled_quantity jsonb NOT NULL,
    shipped_quantity numeric NOT NULL,
    raw_shipped_quantity jsonb NOT NULL,
    return_requested_quantity numeric NOT NULL,
    raw_return_requested_quantity jsonb NOT NULL,
    return_received_quantity numeric NOT NULL,
    raw_return_received_quantity jsonb NOT NULL,
    return_dismissed_quantity numeric NOT NULL,
    raw_return_dismissed_quantity jsonb NOT NULL,
    written_off_quantity numeric NOT NULL,
    raw_written_off_quantity jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    delivered_quantity numeric DEFAULT 0 NOT NULL,
    raw_delivered_quantity jsonb NOT NULL,
    unit_price numeric,
    raw_unit_price jsonb,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb
);


ALTER TABLE public.order_item OWNER TO superuser;

--
-- Name: order_line_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_line_item (
    id text NOT NULL,
    totals_id text,
    title text NOT NULL,
    subtitle text,
    thumbnail text,
    variant_id text,
    product_id text,
    product_title text,
    product_description text,
    product_subtitle text,
    product_type text,
    product_collection text,
    product_handle text,
    variant_sku text,
    variant_barcode text,
    variant_title text,
    variant_option_values jsonb,
    requires_shipping boolean DEFAULT true NOT NULL,
    is_discountable boolean DEFAULT true NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb,
    unit_price numeric NOT NULL,
    raw_unit_price jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_custom_price boolean DEFAULT false NOT NULL,
    product_type_id text
);


ALTER TABLE public.order_line_item OWNER TO superuser;

--
-- Name: order_line_item_adjustment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_line_item_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    item_id text NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_line_item_adjustment OWNER TO superuser;

--
-- Name: order_line_item_tax_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_line_item_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate numeric NOT NULL,
    raw_rate jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    item_id text NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_line_item_tax_line OWNER TO superuser;

--
-- Name: order_payment_collection; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_payment_collection (
    order_id character varying(255) NOT NULL,
    payment_collection_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_payment_collection OWNER TO superuser;

--
-- Name: order_promotion; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_promotion (
    order_id character varying(255) NOT NULL,
    promotion_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_promotion OWNER TO superuser;

--
-- Name: order_shipping; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_shipping (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    shipping_method_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


ALTER TABLE public.order_shipping OWNER TO superuser;

--
-- Name: order_shipping_method; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_shipping_method (
    id text NOT NULL,
    name text NOT NULL,
    description jsonb,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    shipping_option_id text,
    data jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_custom_amount boolean DEFAULT false NOT NULL
);


ALTER TABLE public.order_shipping_method OWNER TO superuser;

--
-- Name: order_shipping_method_adjustment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_shipping_method_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    shipping_method_id text NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_shipping_method_adjustment OWNER TO superuser;

--
-- Name: order_shipping_method_tax_line; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_shipping_method_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate numeric NOT NULL,
    raw_rate jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    shipping_method_id text NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_shipping_method_tax_line OWNER TO superuser;

--
-- Name: order_summary; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_summary (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    totals jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.order_summary OWNER TO superuser;

--
-- Name: order_transaction; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.order_transaction (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    currency_code text NOT NULL,
    reference text,
    reference_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


ALTER TABLE public.order_transaction OWNER TO superuser;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.payment (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    currency_code text NOT NULL,
    provider_id text NOT NULL,
    data jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    payment_collection_id text NOT NULL,
    payment_session_id text NOT NULL,
    metadata jsonb
);


ALTER TABLE public.payment OWNER TO superuser;

--
-- Name: payment_collection; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.payment_collection (
    id text NOT NULL,
    currency_code text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    authorized_amount numeric,
    raw_authorized_amount jsonb,
    captured_amount numeric,
    raw_captured_amount jsonb,
    refunded_amount numeric,
    raw_refunded_amount jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    completed_at timestamp with time zone,
    status text DEFAULT 'not_paid'::text NOT NULL,
    metadata jsonb,
    CONSTRAINT payment_collection_status_check CHECK ((status = ANY (ARRAY['not_paid'::text, 'awaiting'::text, 'authorized'::text, 'partially_authorized'::text, 'canceled'::text, 'failed'::text, 'completed'::text])))
);


ALTER TABLE public.payment_collection OWNER TO superuser;

--
-- Name: payment_collection_payment_providers; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.payment_collection_payment_providers (
    payment_collection_id text NOT NULL,
    payment_provider_id text NOT NULL
);


ALTER TABLE public.payment_collection_payment_providers OWNER TO superuser;

--
-- Name: payment_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.payment_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.payment_provider OWNER TO superuser;

--
-- Name: payment_session; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.payment_session (
    id text NOT NULL,
    currency_code text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text NOT NULL,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    context jsonb,
    status text DEFAULT 'pending'::text NOT NULL,
    authorized_at timestamp with time zone,
    payment_collection_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT payment_session_status_check CHECK ((status = ANY (ARRAY['authorized'::text, 'captured'::text, 'pending'::text, 'requires_more'::text, 'error'::text, 'canceled'::text])))
);


ALTER TABLE public.payment_session OWNER TO superuser;

--
-- Name: price; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price (
    id text NOT NULL,
    title text,
    price_set_id text NOT NULL,
    currency_code text NOT NULL,
    raw_amount jsonb NOT NULL,
    rules_count integer DEFAULT 0,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    price_list_id text,
    amount numeric NOT NULL,
    min_quantity integer,
    max_quantity integer
);


ALTER TABLE public.price OWNER TO superuser;

--
-- Name: price_list; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price_list (
    id text NOT NULL,
    status text DEFAULT 'draft'::text NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    rules_count integer DEFAULT 0,
    title text NOT NULL,
    description text NOT NULL,
    type text DEFAULT 'sale'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT price_list_status_check CHECK ((status = ANY (ARRAY['active'::text, 'draft'::text]))),
    CONSTRAINT price_list_type_check CHECK ((type = ANY (ARRAY['sale'::text, 'override'::text])))
);


ALTER TABLE public.price_list OWNER TO superuser;

--
-- Name: price_list_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price_list_rule (
    id text NOT NULL,
    price_list_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    value jsonb,
    attribute text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.price_list_rule OWNER TO superuser;

--
-- Name: price_preference; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price_preference (
    id text NOT NULL,
    attribute text NOT NULL,
    value text,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.price_preference OWNER TO superuser;

--
-- Name: price_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price_rule (
    id text NOT NULL,
    value text NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    price_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    attribute text DEFAULT ''::text NOT NULL,
    operator text DEFAULT 'eq'::text NOT NULL,
    CONSTRAINT price_rule_operator_check CHECK ((operator = ANY (ARRAY['gte'::text, 'lte'::text, 'gt'::text, 'lt'::text, 'eq'::text])))
);


ALTER TABLE public.price_rule OWNER TO superuser;

--
-- Name: price_set; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.price_set (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.price_set OWNER TO superuser;

--
-- Name: product; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product (
    id text NOT NULL,
    title text NOT NULL,
    handle text NOT NULL,
    subtitle text,
    description text,
    is_giftcard boolean DEFAULT false NOT NULL,
    status text DEFAULT 'draft'::text NOT NULL,
    thumbnail text,
    weight text,
    length text,
    height text,
    width text,
    origin_country text,
    hs_code text,
    mid_code text,
    material text,
    collection_id text,
    type_id text,
    discountable boolean DEFAULT true NOT NULL,
    external_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    CONSTRAINT product_status_check CHECK ((status = ANY (ARRAY['draft'::text, 'proposed'::text, 'published'::text, 'rejected'::text])))
);


ALTER TABLE public.product OWNER TO superuser;

--
-- Name: product_category; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_category (
    id text NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    handle text NOT NULL,
    mpath text NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    is_internal boolean DEFAULT false NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    parent_category_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);


ALTER TABLE public.product_category OWNER TO superuser;

--
-- Name: product_category_product; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_category_product (
    product_id text NOT NULL,
    product_category_id text NOT NULL
);


ALTER TABLE public.product_category_product OWNER TO superuser;

--
-- Name: product_collection; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_collection (
    id text NOT NULL,
    title text NOT NULL,
    handle text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_collection OWNER TO superuser;

--
-- Name: product_option; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_option (
    id text NOT NULL,
    title text NOT NULL,
    product_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_option OWNER TO superuser;

--
-- Name: product_option_value; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_option_value (
    id text NOT NULL,
    value text NOT NULL,
    option_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_option_value OWNER TO superuser;

--
-- Name: product_sales_channel; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_sales_channel (
    product_id character varying(255) NOT NULL,
    sales_channel_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_sales_channel OWNER TO superuser;

--
-- Name: product_shipping_profile; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_shipping_profile (
    product_id character varying(255) NOT NULL,
    shipping_profile_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_shipping_profile OWNER TO superuser;

--
-- Name: product_tag; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_tag (
    id text NOT NULL,
    value text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_tag OWNER TO superuser;

--
-- Name: product_tags; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_tags (
    product_id text NOT NULL,
    product_tag_id text NOT NULL
);


ALTER TABLE public.product_tags OWNER TO superuser;

--
-- Name: product_type; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_type (
    id text NOT NULL,
    value text NOT NULL,
    metadata json,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_type OWNER TO superuser;

--
-- Name: product_variant; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_variant (
    id text NOT NULL,
    title text NOT NULL,
    sku text,
    barcode text,
    ean text,
    upc text,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code text,
    origin_country text,
    mid_code text,
    material text,
    weight integer,
    length integer,
    height integer,
    width integer,
    metadata jsonb,
    variant_rank integer DEFAULT 0,
    product_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_variant OWNER TO superuser;

--
-- Name: product_variant_inventory_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_variant_inventory_item (
    variant_id character varying(255) NOT NULL,
    inventory_item_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_variant_inventory_item OWNER TO superuser;

--
-- Name: product_variant_option; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_variant_option (
    variant_id text NOT NULL,
    option_value_id text NOT NULL
);


ALTER TABLE public.product_variant_option OWNER TO superuser;

--
-- Name: product_variant_price_set; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.product_variant_price_set (
    variant_id character varying(255) NOT NULL,
    price_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.product_variant_price_set OWNER TO superuser;

--
-- Name: promotion; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion (
    id text NOT NULL,
    code text NOT NULL,
    campaign_id text,
    is_automatic boolean DEFAULT false NOT NULL,
    type text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    status text DEFAULT 'draft'::text NOT NULL,
    CONSTRAINT promotion_status_check CHECK ((status = ANY (ARRAY['draft'::text, 'active'::text, 'inactive'::text]))),
    CONSTRAINT promotion_type_check CHECK ((type = ANY (ARRAY['standard'::text, 'buyget'::text])))
);


ALTER TABLE public.promotion OWNER TO superuser;

--
-- Name: promotion_application_method; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_application_method (
    id text NOT NULL,
    value numeric,
    raw_value jsonb,
    max_quantity integer,
    apply_to_quantity integer,
    buy_rules_min_quantity integer,
    type text NOT NULL,
    target_type text NOT NULL,
    allocation text,
    promotion_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    currency_code text,
    CONSTRAINT promotion_application_method_allocation_check CHECK ((allocation = ANY (ARRAY['each'::text, 'across'::text]))),
    CONSTRAINT promotion_application_method_target_type_check CHECK ((target_type = ANY (ARRAY['order'::text, 'shipping_methods'::text, 'items'::text]))),
    CONSTRAINT promotion_application_method_type_check CHECK ((type = ANY (ARRAY['fixed'::text, 'percentage'::text])))
);


ALTER TABLE public.promotion_application_method OWNER TO superuser;

--
-- Name: promotion_campaign; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_campaign (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    campaign_identifier text NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.promotion_campaign OWNER TO superuser;

--
-- Name: promotion_campaign_budget; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_campaign_budget (
    id text NOT NULL,
    type text NOT NULL,
    campaign_id text NOT NULL,
    "limit" numeric,
    raw_limit jsonb,
    used numeric DEFAULT 0 NOT NULL,
    raw_used jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    currency_code text,
    CONSTRAINT promotion_campaign_budget_type_check CHECK ((type = ANY (ARRAY['spend'::text, 'usage'::text])))
);


ALTER TABLE public.promotion_campaign_budget OWNER TO superuser;

--
-- Name: promotion_promotion_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_promotion_rule (
    promotion_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


ALTER TABLE public.promotion_promotion_rule OWNER TO superuser;

--
-- Name: promotion_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_rule (
    id text NOT NULL,
    description text,
    attribute text NOT NULL,
    operator text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT promotion_rule_operator_check CHECK ((operator = ANY (ARRAY['gte'::text, 'lte'::text, 'gt'::text, 'lt'::text, 'eq'::text, 'ne'::text, 'in'::text])))
);


ALTER TABLE public.promotion_rule OWNER TO superuser;

--
-- Name: promotion_rule_value; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.promotion_rule_value (
    id text NOT NULL,
    promotion_rule_id text NOT NULL,
    value text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.promotion_rule_value OWNER TO superuser;

--
-- Name: provider_identity; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.provider_identity (
    id text NOT NULL,
    entity_id text NOT NULL,
    provider text NOT NULL,
    auth_identity_id text NOT NULL,
    user_metadata jsonb,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.provider_identity OWNER TO superuser;

--
-- Name: publishable_api_key_sales_channel; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.publishable_api_key_sales_channel (
    publishable_key_id character varying(255) NOT NULL,
    sales_channel_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.publishable_api_key_sales_channel OWNER TO superuser;

--
-- Name: refund; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.refund (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    payment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text,
    metadata jsonb,
    refund_reason_id text,
    note text
);


ALTER TABLE public.refund OWNER TO superuser;

--
-- Name: refund_reason; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.refund_reason (
    id text NOT NULL,
    label text NOT NULL,
    description text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.refund_reason OWNER TO superuser;

--
-- Name: region; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.region (
    id text NOT NULL,
    name text NOT NULL,
    currency_code text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    automatic_taxes boolean DEFAULT true NOT NULL
);


ALTER TABLE public.region OWNER TO superuser;

--
-- Name: region_country; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.region_country (
    iso_2 text NOT NULL,
    iso_3 text NOT NULL,
    num_code text NOT NULL,
    name text NOT NULL,
    display_name text NOT NULL,
    region_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.region_country OWNER TO superuser;

--
-- Name: region_payment_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.region_payment_provider (
    region_id character varying(255) NOT NULL,
    payment_provider_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.region_payment_provider OWNER TO superuser;

--
-- Name: reservation_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.reservation_item (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    line_item_id text,
    location_id text NOT NULL,
    quantity numeric NOT NULL,
    external_id text,
    description text,
    created_by text,
    metadata jsonb,
    inventory_item_id text NOT NULL,
    allow_backorder boolean DEFAULT false,
    raw_quantity jsonb
);


ALTER TABLE public.reservation_item OWNER TO superuser;

--
-- Name: return; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.return (
    id text NOT NULL,
    order_id text NOT NULL,
    claim_id text,
    exchange_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    status public.return_status_enum DEFAULT 'open'::public.return_status_enum NOT NULL,
    no_notification boolean,
    refund_amount numeric,
    raw_refund_amount jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    received_at timestamp with time zone,
    canceled_at timestamp with time zone,
    location_id text,
    requested_at timestamp with time zone,
    created_by text
);


ALTER TABLE public.return OWNER TO superuser;

--
-- Name: return_display_id_seq; Type: SEQUENCE; Schema: public; Owner: superuser
--

CREATE SEQUENCE public.return_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.return_display_id_seq OWNER TO superuser;

--
-- Name: return_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superuser
--

ALTER SEQUENCE public.return_display_id_seq OWNED BY public.return.display_id;


--
-- Name: return_fulfillment; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.return_fulfillment (
    return_id character varying(255) NOT NULL,
    fulfillment_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.return_fulfillment OWNER TO superuser;

--
-- Name: return_item; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.return_item (
    id text NOT NULL,
    return_id text NOT NULL,
    reason_id text,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    received_quantity numeric DEFAULT 0 NOT NULL,
    raw_received_quantity jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    damaged_quantity numeric DEFAULT 0 NOT NULL,
    raw_damaged_quantity jsonb NOT NULL
);


ALTER TABLE public.return_item OWNER TO superuser;

--
-- Name: return_reason; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    metadata jsonb,
    parent_return_reason_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.return_reason OWNER TO superuser;

--
-- Name: sales_channel; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.sales_channel (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    is_disabled boolean DEFAULT false NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.sales_channel OWNER TO superuser;

--
-- Name: sales_channel_stock_location; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.sales_channel_stock_location (
    sales_channel_id character varying(255) NOT NULL,
    stock_location_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.sales_channel_stock_location OWNER TO superuser;

--
-- Name: service_zone; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.service_zone (
    id text NOT NULL,
    name text NOT NULL,
    metadata jsonb,
    fulfillment_set_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.service_zone OWNER TO superuser;

--
-- Name: shipping_option; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.shipping_option (
    id text NOT NULL,
    name text NOT NULL,
    price_type text DEFAULT 'flat'::text NOT NULL,
    service_zone_id text NOT NULL,
    shipping_profile_id text,
    provider_id text,
    data jsonb,
    metadata jsonb,
    shipping_option_type_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT shipping_option_price_type_check CHECK ((price_type = ANY (ARRAY['calculated'::text, 'flat'::text])))
);


ALTER TABLE public.shipping_option OWNER TO superuser;

--
-- Name: shipping_option_price_set; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.shipping_option_price_set (
    shipping_option_id character varying(255) NOT NULL,
    price_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.shipping_option_price_set OWNER TO superuser;

--
-- Name: shipping_option_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.shipping_option_rule (
    id text NOT NULL,
    attribute text NOT NULL,
    operator text NOT NULL,
    value jsonb,
    shipping_option_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT shipping_option_rule_operator_check CHECK ((operator = ANY (ARRAY['in'::text, 'eq'::text, 'ne'::text, 'gt'::text, 'gte'::text, 'lt'::text, 'lte'::text, 'nin'::text])))
);


ALTER TABLE public.shipping_option_rule OWNER TO superuser;

--
-- Name: shipping_option_type; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.shipping_option_type (
    id text NOT NULL,
    label text NOT NULL,
    description text,
    code text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.shipping_option_type OWNER TO superuser;

--
-- Name: shipping_profile; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.shipping_profile (
    id text NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.shipping_profile OWNER TO superuser;

--
-- Name: stock_location; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.stock_location (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name text NOT NULL,
    address_id text,
    metadata jsonb
);


ALTER TABLE public.stock_location OWNER TO superuser;

--
-- Name: stock_location_address; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.stock_location_address (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    address_1 text NOT NULL,
    address_2 text,
    company text,
    city text,
    country_code text NOT NULL,
    phone text,
    province text,
    postal_code text,
    metadata jsonb
);


ALTER TABLE public.stock_location_address OWNER TO superuser;

--
-- Name: store; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.store (
    id text NOT NULL,
    name text DEFAULT 'Medusa Store'::text NOT NULL,
    default_sales_channel_id text,
    default_region_id text,
    default_location_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.store OWNER TO superuser;

--
-- Name: store_currency; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.store_currency (
    id text NOT NULL,
    currency_code text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    store_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.store_currency OWNER TO superuser;

--
-- Name: tax_provider; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.tax_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public.tax_provider OWNER TO superuser;

--
-- Name: tax_rate; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.tax_rate (
    id text NOT NULL,
    rate real,
    code text NOT NULL,
    name text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    is_combinable boolean DEFAULT false NOT NULL,
    tax_region_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


ALTER TABLE public.tax_rate OWNER TO superuser;

--
-- Name: tax_rate_rule; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.tax_rate_rule (
    id text NOT NULL,
    tax_rate_id text NOT NULL,
    reference_id text NOT NULL,
    reference text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


ALTER TABLE public.tax_rate_rule OWNER TO superuser;

--
-- Name: tax_region; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.tax_region (
    id text NOT NULL,
    provider_id text,
    country_code text NOT NULL,
    province_code text,
    parent_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone,
    CONSTRAINT "CK_tax_region_country_top_level" CHECK (((parent_id IS NULL) OR (province_code IS NOT NULL))),
    CONSTRAINT "CK_tax_region_provider_top_level" CHECK (((parent_id IS NULL) OR (provider_id IS NULL)))
);


ALTER TABLE public.tax_region OWNER TO superuser;

--
-- Name: user; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public."user" (
    id text NOT NULL,
    first_name text,
    last_name text,
    email text NOT NULL,
    avatar_url text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE public."user" OWNER TO superuser;

--
-- Name: workflow_execution; Type: TABLE; Schema: public; Owner: superuser
--

CREATE TABLE public.workflow_execution (
    id character varying NOT NULL,
    workflow_id character varying NOT NULL,
    transaction_id character varying NOT NULL,
    execution jsonb,
    context jsonb,
    state character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    retention_time integer
);


ALTER TABLE public.workflow_execution OWNER TO superuser;

--
-- Name: link_module_migrations id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.link_module_migrations ALTER COLUMN id SET DEFAULT nextval('public.link_module_migrations_id_seq'::regclass);


--
-- Name: mikro_orm_migrations id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.mikro_orm_migrations ALTER COLUMN id SET DEFAULT nextval('public.mikro_orm_migrations_id_seq'::regclass);


--
-- Name: order display_id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);


--
-- Name: order_change_action ordering; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_change_action ALTER COLUMN ordering SET DEFAULT nextval('public.order_change_action_ordering_seq'::regclass);


--
-- Name: order_claim display_id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_claim ALTER COLUMN display_id SET DEFAULT nextval('public.order_claim_display_id_seq'::regclass);


--
-- Name: order_exchange display_id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_exchange ALTER COLUMN display_id SET DEFAULT nextval('public.order_exchange_display_id_seq'::regclass);


--
-- Name: return display_id; Type: DEFAULT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return ALTER COLUMN display_id SET DEFAULT nextval('public.return_display_id_seq'::regclass);


--
-- Data for Name: account_holder; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.account_holder


--
-- Data for Name: api_key; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.api_key (id, token, salt, redacted, title, type, last_used_at, created_by, created_at, revoked_by, revoked_at, updated_at, deleted_at) VALUES ('apk_01JX0A3KR40M4TS7CDQ4KVHGS8', 'pk_8887be2bb12384ecc604f055f8da0943ab47f1b89a19af374dfb6332d3433b1c', '', 'pk_888***b1c', 'Webshop', 'publishable', NULL, '', '2025-06-05 15:07:15.588+00', NULL, NULL, '2025-06-05 15:07:15.588+00', NULL);
INSERT INTO public.api_key (id, token, salt, redacted, title, type, last_used_at, created_by, created_at, revoked_by, revoked_at, updated_at, deleted_at) VALUES ('apk_01JX959G1MTPHPEZNZ9E7ABJ98', 'pk_035213cdbcab6c241968ab9430deca8b312b58120a3504fb5d7fad510104c52b', '', 'pk_035***52b', 'dev', 'publishable', NULL, 'user_01JWY4CQDSJNBBFYM0YBBQT557', '2025-06-09 01:36:15.415+00', NULL, NULL, '2025-06-09 01:36:15.415+00', NULL);
INSERT INTO public.api_key (id, token, salt, redacted, title, type, last_used_at, created_by, created_at, revoked_by, revoked_at, updated_at, deleted_at) VALUES ('apk_01JX95BDJ9S4G7HM61Q1YMPMWQ', '0a8fa3a02bc19fbf963a9b92f29e99690ea856b11aa4e6ed0c1ef5e92b87f0a645423bba50b0c1ee418b613b48836a2c10df1e7425848cfd2fce00b9cdef5209', '6bd334be1b294a44e35f479847048dd6', 'sk_26e***c49', 'dev', 'secret', NULL, 'user_01JWY4CQDSJNBBFYM0YBBQT557', '2025-06-09 01:37:18.41+00', NULL, NULL, '2025-06-09 01:37:18.41+00', NULL);


--
-- Data for Name: application_method_buy_rules; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.application_method_buy_rules


--
-- Data for Name: application_method_target_rules; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.application_method_target_rules (application_method_id, promotion_rule_id) VALUES ('proappmet_01JYAAC6JW4YQ4GCC5VJ1V1B1A', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG');


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JWY4CQGNYP07RWY68DAAK6ZQ', '{"user_id": "user_01JWY4CQDSJNBBFYM0YBBQT557"}', '2025-06-04 18:48:54.037+00', '2025-06-04 18:48:54.045+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JX0BE4FR8TPGJGW1RT3YGVHY', '{"customer_id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC"}', '2025-06-05 15:30:28.985+00', '2025-06-05 15:30:29.024+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JX0X0BDFD9TZ237CVRWEJEGD', '{"customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5"}', '2025-06-05 20:37:31.695+00', '2025-06-05 20:37:31.73+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JXA6R1F1Z332F9N3S9SVZFBG', '{"customer_id": "cus_01JXA6R1GRR3HGS87V89ZS9S10"}', '2025-06-09 11:20:55.01+00', '2025-06-09 11:20:55.072+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JXA76SX4GXAHVB3VTGV2TAAH', '{"customer_id": "cus_01JXA76SXV095VQHJBD05GM76X"}', '2025-06-09 11:28:58.788+00', '2025-06-09 11:28:58.821+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JXA7PS4DG5QW34V5H4RBY6AJ', '{"customer_id": "cus_01JXA7PS5DAEXEESX1TCS62M2Q"}', '2025-06-09 11:37:42.286+00', '2025-06-09 11:37:42.328+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JXZ0TFX091Z7YSHTHENERAQH', '{"customer_id": "cus_01JXZ0TG10TF0B9V7TZTVB41Y8"}', '2025-06-17 13:21:26.955+00', '2025-06-17 13:21:27.109+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JXZ1B9RQKESJHBMNJTVG43B0', '{"customer_id": "cus_01JXZ1B9SW71A3ZZFN8Y7BA9KW"}', '2025-06-17 13:30:37.719+00', '2025-06-17 13:30:37.766+00', NULL);
INSERT INTO public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) VALUES ('authid_01JY22CH8HKH4SRTMPXZNF0C1G', '{"user_id": "user_01JY22CH65DV8YH7RAQ15M9J1M"}', '2025-06-18 17:46:30.034+00', '2025-06-18 17:46:30.048+00', NULL);


--
-- Data for Name: capture; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.capture (id, amount, raw_amount, payment_id, created_at, updated_at, deleted_at, created_by, metadata) VALUES ('capt_01JX0C19DMYMJRJJM3QC1ESH3P', '20', '{"value": "20", "precision": 20}', 'pay_01JX0BYZQF9FQPV1FHH639N0A5', '2025-06-05 15:40:56.629+00', '2025-06-05 15:40:56.629+00', NULL, NULL, NULL);
INSERT INTO public.capture (id, amount, raw_amount, payment_id, created_at, updated_at, deleted_at, created_by, metadata) VALUES ('capt_01JYKJT87X8HTM25AAR0TC0K8J', '40', '{"value": "40", "precision": 20}', 'pay_01JYKHAAPEBY61PKXS7NH14J8K', '2025-06-25 13:00:42.11+00', '2025-06-25 13:00:42.11+00', NULL, NULL, NULL);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0BA7R51QEG2XSYVG8K2YER', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'bezyfij@mailinator.com', 'eur', 'caaddr_01JX0BA7RWEZHYQY7N49CB8605', 'caaddr_01JX0BA7RWRRP49WX9K1VX1ETA', NULL, '2025-06-05 15:26:33.808+00', '2025-06-05 15:28:44.587+00', NULL, '2025-06-05 15:28:44.568+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0BH6MWTYTRDNA1T5SDHXM6', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'fegyl@mailinator.com', 'eur', 'caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG', 'caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F', NULL, '2025-06-05 15:31:10.81+00', '2025-06-05 15:32:21.487+00', NULL, '2025-06-05 15:32:21.466+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0BKW89NR37TPZM3XGQK1FQ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0BMGVTV6ESWV8N1RM447WQ', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'gycyl@mailinator.com', 'eur', 'caaddr_01JX0BMGWDDT87WK4CS1SVTYMC', 'caaddr_01JX0BMGWD2N019XGT1FYCJ9V3', NULL, '2025-06-05 15:33:37.161+00', '2025-06-05 15:34:12.271+00', NULL, '2025-06-05 15:34:12.239+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0BSN0FGKT2PH3ET7YCTAD7', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0BYN2A1X51DSKJJPMPEY7R', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'kylofag@mailinator.com', 'eur', 'caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ', 'caaddr_01JX0BYN2WVXC6YEQJFS7VBST8', NULL, '2025-06-05 15:36:46.352+00', '2025-06-05 15:39:41.266+00', NULL, '2025-06-05 15:39:41.242+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0C52XJ6GXG5S483MBPVRAJ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0C5K64C957CAWJC7QEHYZ4', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'lyvi@mailinator.com', 'eur', 'caaddr_01JX0C5K6TFYNQXBB18KTNSSY6', 'caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD', NULL, '2025-06-05 15:43:01.042+00', '2025-06-05 15:43:35.011+00', NULL, '2025-06-05 15:43:34.992+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0CHE71X2Z7CTF3R4XPYGGJ', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'nokycah@mailinator.com', 'eur', 'caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5', 'caaddr_01JX0CHE7Q603XDG6XDNHV5JT8', NULL, '2025-06-05 15:46:46.254+00', '2025-06-05 15:50:35.662+00', NULL, '2025-06-05 15:50:35.638+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0DKDYRSVD8ZRM8587CZEJC', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0DP6N0PZEW0V8Q678JD3JE', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'fazipuqar@mailinator.com', 'eur', 'caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H', 'caaddr_01JX0DP6NG51E2A0QW64QATTVM', NULL, '2025-06-05 16:08:19.672+00', '2025-06-05 16:10:02.221+00', NULL, '2025-06-05 16:10:02.189+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0VPHTAVGSJFEV7EN9MXAPM', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0VQA5T01GBRVPP8P9SH21Q', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'vywyriqu@mailinator.com', 'eur', 'caaddr_01JX0VQA69YVCW79X29RR1FBSE', 'caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4', NULL, '2025-06-05 20:14:41.996+00', '2025-06-05 20:15:38.17+00', NULL, '2025-06-05 20:15:38.109+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0WR0ET0M9GEBZHCXY1ZXFB', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0WSJRGZ6FHBT9ZH8G3MWJE', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'zasobaka@mailinator.com', 'eur', 'caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G', 'caaddr_01JX0WSJS6G0AX0EX955HY3FTN', NULL, '2025-06-05 20:32:58.33+00', '2025-06-05 20:34:02.063+00', NULL, '2025-06-05 20:34:02.044+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX0X8NRQ6S3JSVSMSYDFMGTP', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'john.steven.ur@gmail.com', 'eur', 'caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY', 'caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK', NULL, '2025-06-05 20:42:04.44+00', '2025-06-07 12:11:57.766+00', NULL, '2025-06-07 12:11:57.736+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX54X605DBFHVJZAKNYF6AZY', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'john.steven.ur@gmail.com', 'eur', 'caaddr_01JX54XHXVNE82NNPGCK307H5K', 'caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9', NULL, '2025-06-07 12:12:34.181+00', '2025-06-07 12:12:57.04+00', NULL, '2025-06-07 12:12:57.019+00');
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JX5T5NCPZKN221QAXM413Z84', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, 'sc_01JWY3551WCZ916A1WRN64Z1CQ', NULL, 'eur', NULL, NULL, NULL, '2025-06-07 18:24:12.185+00', '2025-06-07 18:24:12.185+00', NULL, NULL);
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JXZGX6P63HNWBK9NC9Z51A9E', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JXA7PS5DAEXEESX1TCS62M2Q', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'zape@mailinator.com', 'eur', NULL, NULL, NULL, '2025-06-17 18:02:33.031+00', '2025-06-17 18:02:33.031+00', NULL, NULL);
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JY5FAJVZBTMC1R9JN0C5ZDDT', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'john.steven.ur@gmail.com', 'eur', NULL, NULL, NULL, '2025-06-20 01:30:20.927+00', '2025-06-20 01:34:13.705+00', NULL, NULL);
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'john.steven.ur@gmail.com', 'usd', 'caaddr_01JYCPS779MTRHVQX24D50F2V1', 'caaddr_01JYCPS7789Y7C68P5F37VT9SG', NULL, '2025-06-22 20:50:51.374+00', '2025-06-22 20:56:38.151+00', NULL, NULL);
INSERT INTO public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at) VALUES ('cart_01JYKH7ZZWBKNC6Y67VWCTZNWV', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'john.steven.ur@gmail.com', 'usd', 'caaddr_01JYKH8DSKBMKQHYW86ETZHYKP', 'caaddr_01JYKH8DSK07JGXKJRM21DXEBG', NULL, '2025-06-25 12:33:15.26+00', '2025-06-25 12:34:32.086+00', NULL, '2025-06-25 12:34:32.001+00');


--
-- Data for Name: cart_address; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BA7RWRRP49WX9K1VX1ETA', NULL, 'Cox Johns Trading', 'Quintessa', 'Santana', '86 North First Drive', NULL, 'Minus sint vel place', 'de', 'Aliquid nostrum porr', 'Mollitia est exercit', '+1 (939) 727-1268', NULL, '2025-06-05 15:28:21.276+00', '2025-06-05 15:28:21.276+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BA7RWEZHYQY7N49CB8605', NULL, 'Cox Johns Trading', 'Quintessa', 'Santana', '86 North First Drive', NULL, 'Minus sint vel place', 'de', 'Aliquid nostrum porr', 'Mollitia est exercit', '+1 (939) 727-1268', NULL, '2025-06-05 15:28:21.277+00', '2025-06-05 15:28:21.277+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F', NULL, 'Mack Mcgowan LLC', 'Hammett', 'Acosta', '725 Hague Street', NULL, 'Fugit voluptas nihi', 'de', 'Reprehenderit perfer', 'Et consequatur qui', '+1 (363) 532-4881', NULL, '2025-06-05 15:32:09.517+00', '2025-06-05 15:32:09.517+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG', NULL, 'Mack Mcgowan LLC', 'Hammett', 'Acosta', '725 Hague Street', NULL, 'Fugit voluptas nihi', 'de', 'Reprehenderit perfer', 'Et consequatur qui', '+1 (363) 532-4881', NULL, '2025-06-05 15:32:09.517+00', '2025-06-05 15:32:09.517+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BMGWD2N019XGT1FYCJ9V3', NULL, 'Sheppard Sargent Co', 'Garrett', 'Lambert', '977 First Court', NULL, 'Doloribus nemo sed d', 'de', 'Expedita non excepte', 'Debitis aut illo ali', '+1 (612) 513-8463', NULL, '2025-06-05 15:33:58.285+00', '2025-06-05 15:33:58.285+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BMGWDDT87WK4CS1SVTYMC', NULL, 'Sheppard Sargent Co', 'Garrett', 'Lambert', '977 First Court', NULL, 'Doloribus nemo sed d', 'de', 'Expedita non excepte', 'Debitis aut illo ali', '+1 (612) 513-8463', NULL, '2025-06-05 15:33:58.285+00', '2025-06-05 15:33:58.285+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BYN2WVXC6YEQJFS7VBST8', NULL, 'Medina and Owen Trading', 'Simone', 'Marshall', '67 Clarendon Avenue', NULL, 'Est quidem nemo sap', 'de', 'Tempore quia tenetu', 'Delectus mollitia p', '+1 (588) 782-8046', NULL, '2025-06-05 15:39:30.269+00', '2025-06-05 15:39:30.269+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ', NULL, 'Medina and Owen Trading', 'Simone', 'Marshall', '67 Clarendon Avenue', NULL, 'Est quidem nemo sap', 'de', 'Tempore quia tenetu', 'Delectus mollitia p', '+1 (588) 782-8046', NULL, '2025-06-05 15:39:30.269+00', '2025-06-05 15:39:30.269+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD', NULL, 'Beck Wallace Traders', 'Xavier', 'Ferrell', '754 East Milton Lane', NULL, 'Ut quia odit reprehe', 'de', 'Mollit deserunt ex s', 'Eum quia enim qui qu', '+1 (727) 623-5549', NULL, '2025-06-05 15:43:17.722+00', '2025-06-05 15:43:17.722+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0C5K6TFYNQXBB18KTNSSY6', NULL, 'Beck Wallace Traders', 'Xavier', 'Ferrell', '754 East Milton Lane', NULL, 'Ut quia odit reprehe', 'de', 'Mollit deserunt ex s', 'Eum quia enim qui qu', '+1 (727) 623-5549', NULL, '2025-06-05 15:43:17.722+00', '2025-06-05 15:43:17.722+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0CHE7Q603XDG6XDNHV5JT8', NULL, 'Love Mathis Traders', 'Tyler', 'Marks', '55 Oak Road', NULL, 'Sequi quia id quia', 'gb', 'gh', 'Deserunt ea quisquam', '+1 (208) 909-3727', NULL, '2025-06-05 15:49:45.848+00', '2025-06-05 15:49:45.848+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5', NULL, 'Love Mathis Traders', 'Tyler', 'Marks', '55 Oak Road', NULL, 'Sequi quia id quia', 'gb', 'gh', 'Deserunt ea quisquam', '+1 (208) 909-3727', NULL, '2025-06-05 15:49:45.848+00', '2025-06-05 15:49:45.848+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0DP6NG51E2A0QW64QATTVM', NULL, 'Holloway Simon Traders', 'Ursula', 'Cleveland', '67 Green Fabien Parkway', NULL, 'Laborum Sit volupt', 'fr', 'Est et nulla cupida', 'Corporis autem enim', '+1 (487) 726-5125', NULL, '2025-06-05 16:09:50.513+00', '2025-06-05 16:09:50.513+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H', NULL, 'Holloway Simon Traders', 'Ursula', 'Cleveland', '67 Green Fabien Parkway', NULL, 'Laborum Sit volupt', 'fr', 'Est et nulla cupida', 'Corporis autem enim', '+1 (487) 726-5125', NULL, '2025-06-05 16:09:50.513+00', '2025-06-05 16:09:50.513+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4', NULL, 'Griffith and Phelps Inc', 'Kelsey', 'Monroe', '821 Milton Street', NULL, 'Est dolores ratione', 'it', 'Eum sed quos tempora', 'Ut reiciendis laboru', '+1 (749) 431-5074', NULL, '2025-06-05 20:15:06.954+00', '2025-06-05 20:15:06.954+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0VQA69YVCW79X29RR1FBSE', NULL, 'Griffith and Phelps Inc', 'Kelsey', 'Monroe', '821 Milton Street', NULL, 'Est dolores ratione', 'it', 'Eum sed quos tempora', 'Ut reiciendis laboru', '+1 (749) 431-5074', NULL, '2025-06-05 20:15:06.954+00', '2025-06-05 20:15:06.954+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0WSJS6G0AX0EX955HY3FTN', NULL, 'Garrett and Allen Traders', 'Yuli', 'West', '14 West Green Oak Court', NULL, 'Aliquid beatae a vol', 'se', 'Voluptatem aperiam n', 'Deserunt aut aliqua', '+1 (651) 351-7621', NULL, '2025-06-05 20:33:49.863+00', '2025-06-05 20:33:49.863+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G', NULL, 'Kelly Mcfadden LLC', 'Alfreda', 'Chang', '14 Cowley Extension', NULL, 'In quae aut molestia', 'es', 'Laborum Consectetur', 'Beatae esse enim ap', '+1 (109) 206-1761', NULL, '2025-06-05 20:33:49.863+00', '2025-06-05 20:33:49.863+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:11:46.793+00', '2025-06-07 12:11:46.793+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:11:46.793+00', '2025-06-07 12:11:46.793+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:12:46.395+00', '2025-06-07 12:12:46.395+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54XHXVNE82NNPGCK307H5K', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:12:46.395+00', '2025-06-07 12:12:46.395+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYCPS7789Y7C68P5F37VT9SG', NULL, 'Patrick and Barnett Trading', 'Bruno', 'Roman', '425 Green Nobel Boulevard', NULL, 'Deserunt ut eum atqu', 'gh', 'Est laboriosam offi', 'Omnis qui aut rerum', '+1 (192) 772-4404', NULL, '2025-06-22 20:55:21.577+00', '2025-06-22 20:55:21.577+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYCPS779MTRHVQX24D50F2V1', NULL, 'Patrick and Barnett Trading', 'Bruno', 'Roman', '425 Green Nobel Boulevard', NULL, 'Deserunt ut eum atqu', 'gh', 'Est laboriosam offi', 'Omnis qui aut rerum', '+1 (192) 772-4404', NULL, '2025-06-22 20:55:21.577+00', '2025-06-22 20:55:21.577+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYKH8DSK07JGXKJRM21DXEBG', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-25 12:33:29.396+00', '2025-06-25 12:33:29.396+00', NULL);
INSERT INTO public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYKH8DSKBMKQHYW86ETZHYKP', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-25 12:33:29.396+00', '2025-06-25 12:33:29.396+00', NULL);


--
-- Data for Name: cart_line_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0WR0P2W53WWKXBHXQQSBRK', 'cart_01JX0WR0ET0M9GEBZHCXY1ZXFB', 'S / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '1', 'variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-S-BLACK', NULL, 'S / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 20:32:58.562+00', '2025-06-05 20:32:58.562+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0B6ZGZWVJ3XEC0CARPKD9Y', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '2', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:26:34.528+00', '2025-06-05 15:26:47.481+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0BFE10CQH6KYQPRFDEYZ9B', 'cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '3', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:31:11.52+00', '2025-06-05 15:31:18.792+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0BKWWZ7YPWNTN4AAKR4CVA', 'cart_01JX0BKW89NR37TPZM3XGQK1FQ', 'M', 'Medusa Shorts', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', '1', 'variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'shorts', 'SHORTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:33:37.823+00', '2025-06-05 15:33:37.823+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0BSNQCECT9PEX2P1RX3NYW', 'cart_01JX0BSN0FGKT2PH3ET7YCTAD7', 'M', 'Medusa Sweatpants', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png', '1', 'variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'Medusa Sweatpants', 'Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatpants', 'SWEATPANTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:36:47.084+00', '2025-06-05 15:36:47.084+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0C53JD5GSQTEX6P5NP8FDQ', 'cart_01JX0C52XJ6GXG5S483MBPVRAJ', 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '1', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:43:01.709+00', '2025-06-05 15:43:01.709+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0CBZGZENKC58M28T52BB44', 'cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '2', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:46:46.943+00', '2025-06-05 15:46:54.793+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0CCE44E5SSX1G3VYAKCXFD', 'cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'L / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '2', 'variant_01JX0A3KVGHX1K8469E7SEG4TC', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-L-BLACK', NULL, 'L / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:47:01.892+00', '2025-06-05 15:47:06.97+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0DKE5Z5F3H69E5MK737R0J', 'cart_01JX0DKDYRSVD8ZRM8587CZEJC', 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '1', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 16:08:19.903+00', '2025-06-05 16:08:19.903+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0VPJ6F3FRNXV92M713R1MA', 'cart_01JX0VPHTAVGSJFEV7EN9MXAPM', 'S / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '1', 'variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-S-BLACK', NULL, 'S / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 20:14:42.383+00', '2025-06-05 20:14:42.383+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX0X8NYTSDKJFE0R94YAVETJ', 'cart_01JX0X8NRQ6S3JSVSMSYDFMGTP', 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '1', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 20:42:04.634+00', '2025-06-05 20:42:04.634+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX54X65MRK5YW980K7RP9Z2N', 'cart_01JX54X605DBFHVJZAKNYF6AZY', 'M', 'Medusa Shorts', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', '1', 'variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'shorts', 'SHORTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-07 12:12:34.357+00', '2025-06-07 12:12:34.357+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JX5T5NKMAER8EJN0BGH84402', 'cart_01JX5T5NCPZKN221QAXM413Z84', 'L', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '1', 'variant_01JX0A3KVHZDZEBZ2PVHD40SB1', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-L', NULL, 'L', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-07 18:24:12.405+00', '2025-06-07 18:24:12.405+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JXZGX6XH135SP49QA9F62Z7K', 'cart_01JXZGX6P63HNWBK9NC9Z51A9E', 'L', 'Medusa Shorts', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', '1', 'variant_01JX0A3KVHG6GVPZ0WR3671Q2D', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'shorts', 'SHORTS-L', NULL, 'L', NULL, 't', 't', 't', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-17 18:02:33.265+00', '2025-06-17 18:02:33.265+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JY5EWJNE4RZC5A1YN55XAP87', 'cart_01JXZGX6P63HNWBK9NC9Z51A9E', 'Default variant', 'The Quencher H2.0 Flowstate(TM) Tumbler', NULL, '2', 'variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'The Quencher H2.0 Flowstate(TM) Tumbler', 'Introducing the iconic Quencher, now with the leak proof Pro Tour Flip Straw lid. The 40-ounce Quencher Pro Tour Flip Straw Tumbler makes hydration simple — flip up the built-in straw to sip, then snap it shut when you’re done.', 'tumbler', NULL, 'Featured Products', 'tumbler', 'LYN-DW-TUM', NULL, 'Default variant', NULL, 't', 't', 'f', NULL, NULL, '20', '{"value": "20", "precision": 20}', '{}', '2025-06-20 01:22:41.966+00', '2025-06-20 01:23:13.493+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JY5FAK21CYCVQ0Y1A76NT2KV', 'cart_01JY5FAJVZBTMC1R9JN0C5ZDDT', 'Default variant', 'The Quencher H2.0 Flowstate(TM) Tumbler', 'http://localhost:9002/medusa-media/IMG_3698-01JY5D42TCFZ11FQ4XCMCJQ5FW.JPG', '1', 'variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'The Quencher H2.0 Flowstate(TM) Tumbler', 'Introducing the iconic Quencher, now with the leak proof Pro Tour Flip Straw lid. The 40-ounce Quencher Pro Tour Flip Straw Tumbler makes hydration simple — flip up the built-in straw to sip, then snap it shut when you’re done.', 'tumbler', NULL, 'Featured Products', 'tumbler', 'LYN-DW-TUM', NULL, 'Default variant', NULL, 't', 't', 'f', NULL, NULL, '20', '{"value": "20", "precision": 20}', '{}', '2025-06-20 01:30:21.121+00', '2025-06-20 01:30:21.121+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYCPPRAXPYPHFAN82SC8KVFF', 'cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'Red', 'David Bryant Tumbler', NULL, '1', 'variant_01JY9RPVV63G11BK4KPAH9D4VE', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '20oz | Double Wall Stainless Steel Tumbler', NULL, 'David Bryant collection', 'david-bryant-tumbler', NULL, NULL, 'Red', NULL, 't', 'f', 'f', NULL, NULL, '30', '{"value": "30", "precision": 20}', '{}', '2025-06-22 20:54:00.798+00', '2025-06-22 21:03:28.062+00', '2025-06-22 21:03:28.062+00', NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYCQCB0GQ7FAZ0FMN559PTZZ', 'cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'Red', 'Lynn’s HydroFuel', 'http://localhost:9002/medusa-media/IMG_3989-01JYCMG3ZZVQ1P2816NKGKX25M.JPG', '1', 'variant_01JYA8DVXNKPNHM14461PAR38T', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'Lynn’s HydroFuel', 'Stay refreshed wherever you go with our 20oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '40oz | Double Wall Stainless Steel Tumbler', NULL, 'Lynn’s Collection', 'lynns-hydrofuel', NULL, NULL, 'Red', NULL, 't', 'f', 'f', NULL, NULL, '20', '{"value": "20", "precision": 20}', '{}', '2025-06-22 21:05:48.048+00', '2025-06-22 21:05:48.048+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYCQ71FK90201PCXSJ06AW4M', 'cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '2', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, 'Featured Products', 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '15', '{"value": "15", "precision": 20}', '{}', '2025-06-22 21:02:54.452+00', '2025-06-22 21:02:56.441+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYCPRKPRR1Q01RKFSSR6XXHQ', 'cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'Black', 'David Bryant Tumbler', NULL, '1', 'variant_01JYA6P1K8K27ESA38BW3ZVCMC', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '20oz | Double Wall Stainless Steel Tumbler', NULL, 'David Bryant collection', 'david-bryant-tumbler', NULL, NULL, 'Black', NULL, 't', 'f', 'f', NULL, NULL, '30', '{"value": "30", "precision": 20}', '{}', '2025-06-22 20:55:01.592+00', '2025-06-22 21:03:26.55+00', '2025-06-22 21:03:26.55+00', NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYKEA2ND63DR08QTGKMG3QSC', 'cart_01JYCPGZBDJ28A4DR2B28FRSZZ', 'Orange', 'David Bryant Tumbler', NULL, '1', 'variant_01JY9RQT7QFV055A1ERPEKTEC0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '20oz | Double Wall Stainless Steel Tumbler', NULL, 'David Bryant collection', 'david-bryant-tumbler', NULL, NULL, 'Orange', NULL, 't', 'f', 'f', NULL, NULL, '30', '{"value": "30", "precision": 20}', '{}', '2025-06-25 11:41:57.807+00', '2025-06-25 11:41:57.807+00', NULL, NULL, 'f');
INSERT INTO public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price) VALUES ('cali_01JYKH809YXVMME17WPMF9GD9A', 'cart_01JYKH7ZZWBKNC6Y67VWCTZNWV', 'Orange', 'David Bryant Tumbler', NULL, '1', 'variant_01JY9RQT7QFV055A1ERPEKTEC0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '20oz | Double Wall Stainless Steel Tumbler', NULL, 'David Bryant collection', 'david-bryant-tumbler', NULL, NULL, 'Orange', NULL, 't', 'f', 'f', NULL, NULL, '30', '{"value": "30", "precision": 20}', '{}', '2025-06-25 12:33:15.582+00', '2025-06-25 12:33:15.582+00', NULL, NULL, 'f');


--
-- Data for Name: cart_line_item_adjustment; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.cart_line_item_adjustment


--
-- Data for Name: cart_line_item_tax_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.cart_line_item_tax_line


--
-- Data for Name: cart_payment_collection; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'pay_col_01JX0BARADP3SGSE1YWCJR81J2', 'capaycol_01JX0BARAP3XT8W1TJF6AWK023', '2025-06-05 15:28:38.229909+00', '2025-06-05 15:28:38.229909+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'pay_col_01JX0BHF42A3G1B8GREVT9ZGBM', 'capaycol_01JX0BHF4FWPRG1NMQE7DR6MCV', '2025-06-05 15:32:18.191196+00', '2025-06-05 15:32:18.191196+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0BKW89NR37TPZM3XGQK1FQ', 'pay_col_01JX0BMSXYN4VRYJZ1R6NR11T0', 'capaycol_01JX0BMSYBAPCFRE6C923Y26G4', '2025-06-05 15:34:07.562828+00', '2025-06-05 15:34:07.562828+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0BSN0FGKT2PH3ET7YCTAD7', 'pay_col_01JX0BYVJQ89N19WX3HW4H3Y1H', 'capaycol_01JX0BYVJVFGG3AYMYHG626M08', '2025-06-05 15:39:36.922892+00', '2025-06-05 15:39:36.922892+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0C52XJ6GXG5S483MBPVRAJ', 'pay_col_01JX0C5WG6MNREESB8Q5DKC78S', 'capaycol_01JX0C5WGMDJV2AZXD91TDW79A', '2025-06-05 15:43:27.25176+00', '2025-06-05 15:43:27.25176+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'pay_col_01JX0CJRF69JR4RRA8YQVC6B1P', 'capaycol_01JX0CJRFMQE5CYPBCZJBRH0JS', '2025-06-05 15:50:29.107474+00', '2025-06-05 15:50:29.107474+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0DKDYRSVD8ZRM8587CZEJC', 'pay_col_01JX0DPEM0MCKDFVCWTGS3ZXYC', 'capaycol_01JX0DPEMHJCQYDGGZHPGCT3S5', '2025-06-05 16:09:58.6726+00', '2025-06-05 16:09:58.6726+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0VPHTAVGSJFEV7EN9MXAPM', 'pay_col_01JX0VR5QR6Q2XJT6FM7R8Z4BX', 'capaycol_01JX0VR5QYV6W15K59AP622JX0', '2025-06-05 20:15:35.165203+00', '2025-06-05 20:15:35.165203+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0WR0ET0M9GEBZHCXY1ZXFB', 'pay_col_01JX0WSV30B23NFEPS22YKPF0C', 'capaycol_01JX0WSV36F6G6Z70FCRWXMR5W', '2025-06-05 20:33:58.373906+00', '2025-06-05 20:33:58.373906+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX0X8NRQ6S3JSVSMSYDFMGTP', 'pay_col_01JX54VZGQ87YRERYW8DAKH9CP', 'capaycol_01JX54VZHZF4FXP8YGVD7F0BPG', '2025-06-07 12:11:54.814736+00', '2025-06-07 12:11:54.814736+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JX54X605DBFHVJZAKNYF6AZY', 'pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', 'capaycol_01JX54XSJ6KM0R8RRPJCJQ892W', '2025-06-07 12:12:54.213685+00', '2025-06-07 12:12:54.213685+00', NULL);
INSERT INTO public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('cart_01JYKH7ZZWBKNC6Y67VWCTZNWV', 'pay_col_01JYKH8QDJ1DP15J879G4R90XT', 'capaycol_01JYKH8QE7CS2YZVBXZ9HTVY9W', '2025-06-25 12:33:39.270261+00', '2025-06-25 12:33:39.270261+00', NULL);


--
-- Data for Name: cart_promotion; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.cart_promotion


--
-- Data for Name: cart_shipping_method; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BAB9X7DW0TATXSHRBX10Q', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-05 15:28:24.893+00', '2025-06-05 15:28:25.624+00', '2025-06-05 15:28:25.623+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BAC0CDRDB6M4MX4F9RFC5', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:28:25.613+00', '2025-06-05 15:28:27.479+00', '2025-06-05 15:28:27.478+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BADTF0D40W2AFJVZRS6AC', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-05 15:28:27.471+00', '2025-06-05 15:28:29.801+00', '2025-06-05 15:28:29.801+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BAG31N8ZV9BVE81K1GY44', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:28:29.793+00', '2025-06-05 15:28:32.343+00', '2025-06-05 15:28:32.343+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BAM6NGFVSSK9ZECX35V5M', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:28:34.005+00', '2025-06-05 15:28:34.005+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BAJJM5Y24NZS26RBNYXAN', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-05 15:28:32.34+00', '2025-06-05 15:28:34.01+00', '2025-06-05 15:28:34.01+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BHAEN0EJBZ43J0QZWV5WG', 'cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:32:13.397+00', '2025-06-05 15:32:13.397+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BH9FW73SG0SC0KMH3QR2V', 'cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-05 15:32:12.412+00', '2025-06-05 15:32:13.402+00', '2025-06-05 15:32:13.401+00');
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BMKMBQFM81EX2C1TCP5MQ', 'cart_01JX0BKW89NR37TPZM3XGQK1FQ', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:34:01.1+00', '2025-06-05 15:34:01.1+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0BYR0YNFY3A438AXPQ6FMZ', 'cart_01JX0BSN0FGKT2PH3ET7YCTAD7', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:39:33.278+00', '2025-06-05 15:39:33.278+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0C5QGNVXPQ2ANHCHBPZ1WQ', 'cart_01JX0C52XJ6GXG5S483MBPVRAJ', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:43:22.133+00', '2025-06-05 15:43:22.133+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0CHN0H7869DYV1PW20700E', 'cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:49:52.786+00', '2025-06-05 15:49:52.786+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0DPABQMX1JCZT9E02294VY', 'cart_01JX0DKDYRSVD8ZRM8587CZEJC', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 16:09:54.295+00', '2025-06-05 16:09:54.295+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0VQGBZAT4ZFSPQVBGDWPA5', 'cart_01JX0VPHTAVGSJFEV7EN9MXAPM', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 20:15:13.279+00', '2025-06-05 20:15:13.279+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX0WSP31J81ST5B8EAFX4SWN', 'cart_01JX0WR0ET0M9GEBZHCXY1ZXFB', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 20:33:53.249+00', '2025-06-05 20:33:53.249+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX54VTQBX042140VH9DCYYHZ', 'cart_01JX0X8NRQ6S3JSVSMSYDFMGTP', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-07 12:11:49.867+00', '2025-06-07 12:11:49.867+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JX54XNM50C2H9Q1JFDR862EF', 'cart_01JX54X605DBFHVJZAKNYF6AZY', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-07 12:12:50.181+00', '2025-06-07 12:12:50.181+00', NULL);
INSERT INTO public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) VALUES ('casm_01JYKH8GGTP952G4F1CZF5MKHB', 'cart_01JYKH7ZZWBKNC6Y67VWCTZNWV', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-25 12:33:32.186+00', '2025-06-25 12:33:32.186+00', NULL);


--
-- Data for Name: cart_shipping_method_adjustment; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.cart_shipping_method_adjustment


--
-- Data for Name: cart_shipping_method_tax_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.cart_shipping_method_tax_line


--
-- Data for Name: credit_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.credit_line


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('usd', '$', '$', '2', '0', '{"value": "0", "precision": 20}', 'US Dollar', '2025-06-04 18:27:13.552+00', '2025-06-04 18:27:13.552+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('cad', 'CA$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Canadian Dollar', '2025-06-04 18:27:13.552+00', '2025-06-04 18:27:13.552+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('eur', '€', '€', '2', '0', '{"value": "0", "precision": 20}', 'Euro', '2025-06-04 18:27:13.552+00', '2025-06-04 18:27:13.552+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('aed', 'AED', 'د.إ.', '2', '0', '{"value": "0", "precision": 20}', 'United Arab Emirates Dirham', '2025-06-04 18:27:13.552+00', '2025-06-04 18:27:13.552+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('afn', 'Af', '؋', '0', '0', '{"value": "0", "precision": 20}', 'Afghan Afghani', '2025-06-04 18:27:13.552+00', '2025-06-04 18:27:13.552+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('all', 'ALL', 'Lek', '0', '0', '{"value": "0", "precision": 20}', 'Albanian Lek', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('amd', 'AMD', 'դր.', '0', '0', '{"value": "0", "precision": 20}', 'Armenian Dram', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ars', 'AR$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Argentine Peso', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('aud', 'AU$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Australian Dollar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('azn', 'man.', 'ман.', '2', '0', '{"value": "0", "precision": 20}', 'Azerbaijani Manat', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bam', 'KM', 'KM', '2', '0', '{"value": "0", "precision": 20}', 'Bosnia-Herzegovina Convertible Mark', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bdt', 'Tk', '৳', '2', '0', '{"value": "0", "precision": 20}', 'Bangladeshi Taka', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bgn', 'BGN', 'лв.', '2', '0', '{"value": "0", "precision": 20}', 'Bulgarian Lev', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bhd', 'BD', 'د.ب.', '3', '0', '{"value": "0", "precision": 20}', 'Bahraini Dinar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bif', 'FBu', 'FBu', '0', '0', '{"value": "0", "precision": 20}', 'Burundian Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bnd', 'BN$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Brunei Dollar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bob', 'Bs', 'Bs', '2', '0', '{"value": "0", "precision": 20}', 'Bolivian Boliviano', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('brl', 'R$', 'R$', '2', '0', '{"value": "0", "precision": 20}', 'Brazilian Real', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bwp', 'BWP', 'P', '2', '0', '{"value": "0", "precision": 20}', 'Botswanan Pula', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('byn', 'Br', 'руб.', '2', '0', '{"value": "0", "precision": 20}', 'Belarusian Ruble', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('bzd', 'BZ$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Belize Dollar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('cdf', 'CDF', 'FrCD', '2', '0', '{"value": "0", "precision": 20}', 'Congolese Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('chf', 'CHF', 'CHF', '2', '0.05', '{"value": "0.05", "precision": 20}', 'Swiss Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('clp', 'CL$', '$', '0', '0', '{"value": "0", "precision": 20}', 'Chilean Peso', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('cny', 'CN¥', 'CN¥', '2', '0', '{"value": "0", "precision": 20}', 'Chinese Yuan', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('cop', 'CO$', '$', '0', '0', '{"value": "0", "precision": 20}', 'Colombian Peso', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('crc', '₡', '₡', '0', '0', '{"value": "0", "precision": 20}', 'Costa Rican Colón', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('cve', 'CV$', 'CV$', '2', '0', '{"value": "0", "precision": 20}', 'Cape Verdean Escudo', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('czk', 'Kč', 'Kč', '2', '0', '{"value": "0", "precision": 20}', 'Czech Republic Koruna', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('djf', 'Fdj', 'Fdj', '0', '0', '{"value": "0", "precision": 20}', 'Djiboutian Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('dkk', 'Dkr', 'kr', '2', '0', '{"value": "0", "precision": 20}', 'Danish Krone', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('dop', 'RD$', 'RD$', '2', '0', '{"value": "0", "precision": 20}', 'Dominican Peso', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('dzd', 'DA', 'د.ج.', '2', '0', '{"value": "0", "precision": 20}', 'Algerian Dinar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('eek', 'Ekr', 'kr', '2', '0', '{"value": "0", "precision": 20}', 'Estonian Kroon', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('egp', 'EGP', 'ج.م.', '2', '0', '{"value": "0", "precision": 20}', 'Egyptian Pound', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ern', 'Nfk', 'Nfk', '2', '0', '{"value": "0", "precision": 20}', 'Eritrean Nakfa', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('etb', 'Br', 'Br', '2', '0', '{"value": "0", "precision": 20}', 'Ethiopian Birr', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('gbp', '£', '£', '2', '0', '{"value": "0", "precision": 20}', 'British Pound Sterling', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('gel', 'GEL', 'GEL', '2', '0', '{"value": "0", "precision": 20}', 'Georgian Lari', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ghs', 'GH₵', 'GH₵', '2', '0', '{"value": "0", "precision": 20}', 'Ghanaian Cedi', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('gnf', 'FG', 'FG', '0', '0', '{"value": "0", "precision": 20}', 'Guinean Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('gtq', 'GTQ', 'Q', '2', '0', '{"value": "0", "precision": 20}', 'Guatemalan Quetzal', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('hkd', 'HK$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Hong Kong Dollar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('hnl', 'HNL', 'L', '2', '0', '{"value": "0", "precision": 20}', 'Honduran Lempira', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('hrk', 'kn', 'kn', '2', '0', '{"value": "0", "precision": 20}', 'Croatian Kuna', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('huf', 'Ft', 'Ft', '0', '0', '{"value": "0", "precision": 20}', 'Hungarian Forint', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('idr', 'Rp', 'Rp', '0', '0', '{"value": "0", "precision": 20}', 'Indonesian Rupiah', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ils', '₪', '₪', '2', '0', '{"value": "0", "precision": 20}', 'Israeli New Sheqel', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('inr', 'Rs', '₹', '2', '0', '{"value": "0", "precision": 20}', 'Indian Rupee', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('iqd', 'IQD', 'د.ع.', '0', '0', '{"value": "0", "precision": 20}', 'Iraqi Dinar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('irr', 'IRR', '﷼', '0', '0', '{"value": "0", "precision": 20}', 'Iranian Rial', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('isk', 'Ikr', 'kr', '0', '0', '{"value": "0", "precision": 20}', 'Icelandic Króna', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('jmd', 'J$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Jamaican Dollar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('jod', 'JD', 'د.أ.', '3', '0', '{"value": "0", "precision": 20}', 'Jordanian Dinar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('jpy', '¥', '￥', '0', '0', '{"value": "0", "precision": 20}', 'Japanese Yen', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('kes', 'Ksh', 'Ksh', '2', '0', '{"value": "0", "precision": 20}', 'Kenyan Shilling', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('khr', 'KHR', '៛', '2', '0', '{"value": "0", "precision": 20}', 'Cambodian Riel', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('kmf', 'CF', 'FC', '0', '0', '{"value": "0", "precision": 20}', 'Comorian Franc', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('krw', '₩', '₩', '0', '0', '{"value": "0", "precision": 20}', 'South Korean Won', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('kwd', 'KD', 'د.ك.', '3', '0', '{"value": "0", "precision": 20}', 'Kuwaiti Dinar', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('kzt', 'KZT', 'тңг.', '2', '0', '{"value": "0", "precision": 20}', 'Kazakhstani Tenge', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('lbp', 'LB£', 'ل.ل.', '0', '0', '{"value": "0", "precision": 20}', 'Lebanese Pound', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('lkr', 'SLRs', 'SL Re', '2', '0', '{"value": "0", "precision": 20}', 'Sri Lankan Rupee', '2025-06-04 18:27:13.553+00', '2025-06-04 18:27:13.553+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ltl', 'Lt', 'Lt', '2', '0', '{"value": "0", "precision": 20}', 'Lithuanian Litas', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('lvl', 'Ls', 'Ls', '2', '0', '{"value": "0", "precision": 20}', 'Latvian Lats', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('lyd', 'LD', 'د.ل.', '3', '0', '{"value": "0", "precision": 20}', 'Libyan Dinar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mad', 'MAD', 'د.م.', '2', '0', '{"value": "0", "precision": 20}', 'Moroccan Dirham', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mdl', 'MDL', 'MDL', '2', '0', '{"value": "0", "precision": 20}', 'Moldovan Leu', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mga', 'MGA', 'MGA', '0', '0', '{"value": "0", "precision": 20}', 'Malagasy Ariary', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mkd', 'MKD', 'MKD', '2', '0', '{"value": "0", "precision": 20}', 'Macedonian Denar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mmk', 'MMK', 'K', '0', '0', '{"value": "0", "precision": 20}', 'Myanma Kyat', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mnt', 'MNT', '₮', '0', '0', '{"value": "0", "precision": 20}', 'Mongolian Tugrig', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mop', 'MOP$', 'MOP$', '2', '0', '{"value": "0", "precision": 20}', 'Macanese Pataca', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mur', 'MURs', 'MURs', '0', '0', '{"value": "0", "precision": 20}', 'Mauritian Rupee', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mxn', 'MX$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Mexican Peso', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('myr', 'RM', 'RM', '2', '0', '{"value": "0", "precision": 20}', 'Malaysian Ringgit', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('mzn', 'MTn', 'MTn', '2', '0', '{"value": "0", "precision": 20}', 'Mozambican Metical', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('nad', 'N$', 'N$', '2', '0', '{"value": "0", "precision": 20}', 'Namibian Dollar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ngn', '₦', '₦', '2', '0', '{"value": "0", "precision": 20}', 'Nigerian Naira', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('nio', 'C$', 'C$', '2', '0', '{"value": "0", "precision": 20}', 'Nicaraguan Córdoba', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('nok', 'Nkr', 'kr', '2', '0', '{"value": "0", "precision": 20}', 'Norwegian Krone', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('npr', 'NPRs', 'नेरू', '2', '0', '{"value": "0", "precision": 20}', 'Nepalese Rupee', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('nzd', 'NZ$', '$', '2', '0', '{"value": "0", "precision": 20}', 'New Zealand Dollar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('omr', 'OMR', 'ر.ع.', '3', '0', '{"value": "0", "precision": 20}', 'Omani Rial', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('pab', 'B/.', 'B/.', '2', '0', '{"value": "0", "precision": 20}', 'Panamanian Balboa', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('pen', 'S/.', 'S/.', '2', '0', '{"value": "0", "precision": 20}', 'Peruvian Nuevo Sol', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('php', '₱', '₱', '2', '0', '{"value": "0", "precision": 20}', 'Philippine Peso', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('pkr', 'PKRs', '₨', '0', '0', '{"value": "0", "precision": 20}', 'Pakistani Rupee', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('pln', 'zł', 'zł', '2', '0', '{"value": "0", "precision": 20}', 'Polish Zloty', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('pyg', '₲', '₲', '0', '0', '{"value": "0", "precision": 20}', 'Paraguayan Guarani', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('qar', 'QR', 'ر.ق.', '2', '0', '{"value": "0", "precision": 20}', 'Qatari Rial', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ron', 'RON', 'RON', '2', '0', '{"value": "0", "precision": 20}', 'Romanian Leu', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('rsd', 'din.', 'дин.', '0', '0', '{"value": "0", "precision": 20}', 'Serbian Dinar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('rub', 'RUB', '₽.', '2', '0', '{"value": "0", "precision": 20}', 'Russian Ruble', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('rwf', 'RWF', 'FR', '0', '0', '{"value": "0", "precision": 20}', 'Rwandan Franc', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('sar', 'SR', 'ر.س.', '2', '0', '{"value": "0", "precision": 20}', 'Saudi Riyal', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('sdg', 'SDG', 'SDG', '2', '0', '{"value": "0", "precision": 20}', 'Sudanese Pound', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('sek', 'Skr', 'kr', '2', '0', '{"value": "0", "precision": 20}', 'Swedish Krona', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('sgd', 'S$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Singapore Dollar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('sos', 'Ssh', 'Ssh', '0', '0', '{"value": "0", "precision": 20}', 'Somali Shilling', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('syp', 'SY£', 'ل.س.', '0', '0', '{"value": "0", "precision": 20}', 'Syrian Pound', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('thb', '฿', '฿', '2', '0', '{"value": "0", "precision": 20}', 'Thai Baht', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('tnd', 'DT', 'د.ت.', '3', '0', '{"value": "0", "precision": 20}', 'Tunisian Dinar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('top', 'T$', 'T$', '2', '0', '{"value": "0", "precision": 20}', 'Tongan Paʻanga', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('try', '₺', '₺', '2', '0', '{"value": "0", "precision": 20}', 'Turkish Lira', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ttd', 'TT$', '$', '2', '0', '{"value": "0", "precision": 20}', 'Trinidad and Tobago Dollar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('twd', 'NT$', 'NT$', '2', '0', '{"value": "0", "precision": 20}', 'New Taiwan Dollar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('tzs', 'TSh', 'TSh', '0', '0', '{"value": "0", "precision": 20}', 'Tanzanian Shilling', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('uah', '₴', '₴', '2', '0', '{"value": "0", "precision": 20}', 'Ukrainian Hryvnia', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('ugx', 'USh', 'USh', '0', '0', '{"value": "0", "precision": 20}', 'Ugandan Shilling', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('uyu', '$U', '$', '2', '0', '{"value": "0", "precision": 20}', 'Uruguayan Peso', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('uzs', 'UZS', 'UZS', '0', '0', '{"value": "0", "precision": 20}', 'Uzbekistan Som', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('vef', 'Bs.F.', 'Bs.F.', '2', '0', '{"value": "0", "precision": 20}', 'Venezuelan Bolívar', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('vnd', '₫', '₫', '0', '0', '{"value": "0", "precision": 20}', 'Vietnamese Dong', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('xaf', 'FCFA', 'FCFA', '0', '0', '{"value": "0", "precision": 20}', 'CFA Franc BEAC', '2025-06-04 18:27:13.554+00', '2025-06-04 18:27:13.554+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('xof', 'CFA', 'CFA', '0', '0', '{"value": "0", "precision": 20}', 'CFA Franc BCEAO', '2025-06-04 18:27:13.555+00', '2025-06-04 18:27:13.555+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('yer', 'YR', 'ر.ي.', '0', '0', '{"value": "0", "precision": 20}', 'Yemeni Rial', '2025-06-04 18:27:13.555+00', '2025-06-04 18:27:13.555+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('zar', 'R', 'R', '2', '0', '{"value": "0", "precision": 20}', 'South African Rand', '2025-06-04 18:27:13.555+00', '2025-06-04 18:27:13.555+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('zmk', 'ZK', 'ZK', '0', '0', '{"value": "0", "precision": 20}', 'Zambian Kwacha', '2025-06-04 18:27:13.555+00', '2025-06-04 18:27:13.555+00', NULL);
INSERT INTO public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) VALUES ('zwl', 'ZWL$', 'ZWL$', '0', '0', '{"value": "0", "precision": 20}', 'Zimbabwean Dollar', '2025-06-04 18:27:13.555+00', '2025-06-04 18:27:13.555+00', NULL);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0BA7R51QEG2XSYVG8K2YER', NULL, NULL, NULL, 'bezyfij@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:28:21.254+00', '2025-06-05 15:28:21.254+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0BE4GQE5ZDVB833EP1TTRC', NULL, 'Karly', 'Mcneil', 'viruky@mailinator.com', '+1 (291) 153-7883', 't', NULL, '2025-06-05 15:30:29.015+00', '2025-06-05 15:30:29.015+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0BH6MWTYTRDNA1T5SDHXM6', NULL, NULL, NULL, 'fegyl@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:32:09.5+00', '2025-06-05 15:32:09.5+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0BMGVTV6ESWV8N1RM447WQ', NULL, NULL, NULL, 'gycyl@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:33:58.266+00', '2025-06-05 15:33:58.266+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0BYN2A1X51DSKJJPMPEY7R', NULL, NULL, NULL, 'kylofag@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:39:30.25+00', '2025-06-05 15:39:30.25+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0C5K64C957CAWJC7QEHYZ4', NULL, NULL, NULL, 'lyvi@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:43:17.7+00', '2025-06-05 15:43:17.7+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0CHE71X2Z7CTF3R4XPYGGJ', NULL, NULL, NULL, 'nokycah@mailinator.com', NULL, 'f', NULL, '2025-06-05 15:49:45.826+00', '2025-06-05 15:49:45.826+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0DP6N0PZEW0V8Q678JD3JE', NULL, NULL, NULL, 'fazipuqar@mailinator.com', NULL, 'f', NULL, '2025-06-05 16:09:50.497+00', '2025-06-05 16:09:50.497+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0VQA5T01GBRVPP8P9SH21Q', NULL, NULL, NULL, 'vywyriqu@mailinator.com', NULL, 'f', NULL, '2025-06-05 20:15:06.938+00', '2025-06-05 20:15:06.938+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0WSJRGZ6FHBT9ZH8G3MWJE', NULL, NULL, NULL, 'zasobaka@mailinator.com', NULL, 'f', NULL, '2025-06-05 20:33:49.84+00', '2025-06-05 20:33:49.84+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXA2P825ABFWK4PFK778KSX5', 'Aslano Tech', 'Peter', 'Aslan', 'peter.aslan@gmail.com', NULL, 'f', NULL, '2025-06-09 10:10:01.925+00', '2025-06-09 10:10:01.925+00', NULL, 'user_01JWY4CQDSJNBBFYM0YBBQT557');
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXA6R1GRR3HGS87V89ZS9S10', NULL, 'Karyn', 'Mcfarland', 'pozoty@mailinator.com', '+1 +1 (102) 203-3522', 't', NULL, '2025-06-09 11:20:55.064+00', '2025-06-09 11:20:55.064+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXA76SXV095VQHJBD05GM76X', NULL, 'Colin', 'Dorsey', 'limig@mailinator.com', '+1 +1 (945) 683-3071', 't', NULL, '2025-06-09 11:28:58.812+00', '2025-06-09 11:28:58.812+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXA7PS5DAEXEESX1TCS62M2Q', NULL, 'Sopoline', 'Kirk', 'zape@mailinator.com', '+1 (521) 695-6281', 't', NULL, '2025-06-09 11:37:42.318+00', '2025-06-09 11:37:42.318+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXZ0TG10TF0B9V7TZTVB41Y8', NULL, 'Xavier', 'Nelson', 'ponukalaf@mailinator.com', '+1 +1 (947) 968-6799', 't', NULL, '2025-06-17 13:21:27.073+00', '2025-06-17 13:21:27.073+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JXZ1B9SW71A3ZZFN8Y7BA9KW', NULL, 'Amela', 'Andrews', 'vohicopura@mailinator.com', '+1 +1 (311) 883-6671', 't', NULL, '2025-06-17 13:30:37.756+00', '2025-06-17 13:30:37.756+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JYCPS76QWXPN09DWGDP5GX9M', NULL, NULL, NULL, 'napygev@mailinator.com', NULL, 'f', NULL, '2025-06-22 20:55:21.559+00', '2025-06-22 20:55:21.559+00', NULL, NULL);
INSERT INTO public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) VALUES ('cus_01JX0X0BEBRAQ5T528K9B9K4G5', 'Griffin and Massey Co', 'Gillian', 'Bradshaw', 'john.steven.ur@gmail.com', '+233 59 233 0177', 't', NULL, '2025-06-05 20:37:31.723+00', '2025-06-25 11:48:34.053+00', NULL, NULL);


--
-- Data for Name: customer_account_holder; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.customer_account_holder


--
-- Data for Name: customer_address; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.customer_address (id, customer_id, address_name, is_default_shipping, is_default_billing, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('cuaddr_01JX0X28KB56SHV2QD7FMV6ENX', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', NULL, 'f', 'f', 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', 'APT 37', 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-05 20:38:34.348+00', '2025-06-05 20:38:34.348+00', NULL);
INSERT INTO public.customer_address (id, customer_id, address_name, is_default_shipping, is_default_billing, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('cuaddr_01JYCSG4NX26J68TCCXQ8Q1GWA', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', NULL, 'f', 'f', 'Lewis Harding LLC', 'Leandra', 'Bass', '809 Milton Extension', 'Ipsa obcaecati solu', 'Consequatur dolore l', 'dk', 'Veritatis nemo culpa', 'Doloremque nulla ips', '+1 (356) 235-8841', NULL, '2025-06-22 21:42:49.79+00', '2025-06-22 21:42:49.79+00', NULL);


--
-- Data for Name: customer_group; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.customer_group (id, name, metadata, created_by, created_at, updated_at, deleted_at) VALUES ('cusgroup_01JX0CNH3ABJ3ZTXWTZ485YRBE', 'Group one', NULL, 'user_01JWY4CQDSJNBBFYM0YBBQT557', '2025-06-05 15:51:59.85+00', '2025-06-21 22:42:43.704+00', NULL);


--
-- Data for Name: customer_group_customer; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.customer_group_customer (id, customer_id, customer_group_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('cusgc_01JX0CP2R4FJY0WB4BN6XBH651', 'cus_01JX0BE4GQE5ZDVB833EP1TTRC', 'cusgroup_01JX0CNH3ABJ3ZTXWTZ485YRBE', NULL, '2025-06-05 15:52:17.925+00', '2025-06-05 15:52:17.925+00', NULL, NULL);


--
-- Data for Name: fulfillment; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.fulfillment (id, location_id, packed_at, shipped_at, delivered_at, canceled_at, data, provider_id, shipping_option_id, metadata, delivery_address_id, created_at, updated_at, deleted_at, marked_shipped_by, created_by, requires_shipping) VALUES ('ful_01JX0C1FGQR5NN788CACVAMBBZ', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2025-06-05 15:41:02.856+00', '2025-06-05 15:41:08.875+00', '2025-06-05 15:41:11.659+00', NULL, '{}', 'manual_manual', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', NULL, 'fuladdr_01JX0C1FGPXJVAX5PAZ57AKDXP', '2025-06-05 15:41:02.872+00', '2025-06-05 15:41:11.672+00', NULL, NULL, NULL, 't');
INSERT INTO public.fulfillment (id, location_id, packed_at, shipped_at, delivered_at, canceled_at, data, provider_id, shipping_option_id, metadata, delivery_address_id, created_at, updated_at, deleted_at, marked_shipped_by, created_by, requires_shipping) VALUES ('ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2025-06-29 17:52:52.073+00', '2025-06-29 17:55:16.375+00', '2025-06-29 17:55:19.512+00', NULL, '{}', 'manual_manual', 'so_01JX0A3KP977M4PJZGX2BQV4G0', NULL, 'fuladdr_01JYYD43BQXB97Y14WQ5SNR0MH', '2025-06-29 17:52:52.09+00', '2025-06-29 17:55:19.525+00', NULL, NULL, NULL, 't');


--
-- Data for Name: fulfillment_address; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.fulfillment_address (id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('fuladdr_01JX0C1FGPXJVAX5PAZ57AKDXP', 'Medina and Owen Trading', 'Simone', 'Marshall', '67 Clarendon Avenue', NULL, 'Est quidem nemo sap', 'de', 'Tempore quia tenetu', 'Delectus mollitia p', '+1 (588) 782-8046', NULL, '2025-06-05 15:39:30.269+00', '2025-06-05 15:39:30.269+00', NULL);
INSERT INTO public.fulfillment_address (id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('fuladdr_01JYYD43BQXB97Y14WQ5SNR0MH', 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-25 12:33:29.396+00', '2025-06-25 12:33:29.396+00', NULL);


--
-- Data for Name: fulfillment_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.fulfillment_item (id, title, sku, barcode, quantity, raw_quantity, line_item_id, inventory_item_id, fulfillment_id, created_at, updated_at, deleted_at) VALUES ('fulit_01JX0C1FGPSRP6J1TJ3RBXANDZ', 'M', 'SWEATPANTS-M', '', '1', '{"value": "1", "precision": 20}', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', 'iitem_01JX0A3KWPEH5C400Z4NFQ9WPZ', 'ful_01JX0C1FGQR5NN788CACVAMBBZ', '2025-06-05 15:41:02.872+00', '2025-06-05 15:41:02.872+00', NULL);
INSERT INTO public.fulfillment_item (id, title, sku, barcode, quantity, raw_quantity, line_item_id, inventory_item_id, fulfillment_id, created_at, updated_at, deleted_at) VALUES ('fulit_01JYYD43BPQ8GDVMQYY8SWDNJ3', 'Orange', '', '', '1', '{"value": "1", "precision": 20}', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', 'iitem_01JY9RQT80SQFPXDR9WH5EB206', 'ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', '2025-06-29 17:52:52.091+00', '2025-06-29 17:52:52.091+00', NULL);


--
-- Data for Name: fulfillment_label; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.fulfillment_label


--
-- Data for Name: fulfillment_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.fulfillment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('manual_manual', 't', '2025-06-04 18:27:13.892+00', '2025-06-04 18:27:13.892+00', NULL);


--
-- Data for Name: fulfillment_set; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.fulfillment_set (id, name, type, metadata, created_at, updated_at, deleted_at) VALUES ('fuset_01JX0A3KMJW8DBCT3P1YEMYMAA', 'European Warehouse delivery', 'shipping', NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.fulfillment_set (id, name, type, metadata, created_at, updated_at, deleted_at) VALUES ('fuset_01JYAAN0Q3MT67JYBNS47070DG', 'My warehouse pick up', 'pickup', NULL, '2025-06-21 22:44:52.068+00', '2025-06-21 22:45:09.046+00', '2025-06-21 22:45:09.045+00');
INSERT INTO public.fulfillment_set (id, name, type, metadata, created_at, updated_at, deleted_at) VALUES ('fuset_01JYAB2P65H33PF5YZN54Z7GXA', 'Karyn Flowers pick up', 'pickup', NULL, '2025-06-21 22:52:20.037+00', '2025-06-21 22:52:20.037+00', NULL);
INSERT INTO public.fulfillment_set (id, name, type, metadata, created_at, updated_at, deleted_at) VALUES ('fuset_01JYAB3A0N1PS59C5SSK1XQG94', 'Karyn Flowers shipping', 'shipping', NULL, '2025-06-21 22:52:40.341+00', '2025-06-21 22:52:40.341+00', NULL);


--
-- Data for Name: geo_zone; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMG0TS6WSGSSB473ANZ', 'country', 'gb', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMG4CZXW70Z32HQMB7Z', 'country', 'de', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMG906SJ8JZ09VX4AG6', 'country', 'dk', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMH7QS0QYZTAQ2H2BE9', 'country', 'se', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMHGBBJBJDQC0TWBCB7', 'country', 'fr', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMHVBZWNY36J0RCGCZM', 'country', 'es', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JX0A3KMHY7F98GVEEGF4DJQY', 'country', 'it', NULL, NULL, 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', NULL, NULL, '2025-06-05 15:07:15.476+00', '2025-06-05 15:07:15.476+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JY9WTZVXJ7DV9F6E6R5WTYX6', 'country', 'us', NULL, NULL, 'serzo_01JY9WTZVY805KJKE9EVT6JMN4', NULL, NULL, '2025-06-21 18:43:27.743+00', '2025-06-21 18:43:27.743+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J7J2QQ76FCKKTV729W', 'country', 'af', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J79S8Q8J0V7N80Y24W', 'country', 'al', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J7QHVWWT34SJVGJAEY', 'country', 'dz', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J7S7QCGSDFPQYHC9GM', 'country', 'as', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J79JSGAE34440Z5BGJ', 'country', 'ad', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J764YY6D47PMJ5DTAE', 'country', 'ao', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8FR7KJ5QVYSDXBC6B', 'country', 'ai', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8SNH2KPW0FPW89SYK', 'country', 'aq', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8GSDEJGR4HM1YME28', 'country', 'ag', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8WNR0H2WK7HSQ8WX2', 'country', 'ar', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J80KCJMJ93624N7QKN', 'country', 'am', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8EK7SFA8Q1C1FTM34', 'country', 'aw', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8F009GQF3EFS90MSX', 'country', 'au', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8BV1Z87TNWVJ0QY9M', 'country', 'at', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J87KDY3DWX7D98SHPW', 'country', 'az', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J8QF23YPD3D6WYXVPM', 'country', 'bs', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9BTDTTVVV446VJ0EE', 'country', 'bh', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9539M1FD7N1XRYWA1', 'country', 'bd', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J92VVAF8XC7ADFS1ES', 'country', 'bb', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9P14FYF3C1E9G77MY', 'country', 'by', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9MQK4FDPB22BCX08K', 'country', 'be', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9TQ7S3YCND7GQAGDR', 'country', 'bz', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9N6AHMR9A8CYY3WW9', 'country', 'bj', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J96EGFYJ5CGYDA8SV2', 'country', 'bm', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J9H36N45A8VM4EGS0B', 'country', 'bt', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33J99YNHDSH6FMR2VYV1', 'country', 'bo', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAP7DWR3GFWQWWWPM5', 'country', 'bq', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAF0QB4RQ2QMYKNAXG', 'country', 'ba', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAAVMBHHW72Z36ZQRT', 'country', 'bw', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAAQRVV0QP1VP929V4', 'country', 'bv', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAJ2MX84PSTYC2WYZJ', 'country', 'br', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAB459BGZA3Q5AHRHS', 'country', 'io', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAG6CWCW2RTY6H8111', 'country', 'bn', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAJEQEPGR155C83RR8', 'country', 'bg', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAHRZJQ8MXYFYZHMT6', 'country', 'bf', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JAR3KWEY6JY2D56EYG', 'country', 'bi', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JA0082H6Z5ZZV982R3', 'country', 'kh', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JBHRM3D8KWCJ3JGX07', 'country', 'cm', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JB6TXHBGZECCDRN1S8', 'country', 'ca', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JBWTS71MMDW81EGZE2', 'country', 'cv', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JB79VMTNSEZA6H102K', 'country', 'ky', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JBX9BTP179XFDSW93C', 'country', 'cf', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JB4V33D2WSQ6JQZSQN', 'country', 'td', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JBCXAYDJZ90G2ATB4G', 'country', 'cl', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JB6Q15NV9RW0RDXZSX', 'country', 'cn', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JBETQP40WNKBGQMF5V', 'country', 'cx', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JB3K33P7CH6B7G6SYW', 'country', 'cc', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JCAXW1K2SVW8Q0WJJT', 'country', 'co', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JC4YXXF9BBH5MF0JBQ', 'country', 'km', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB33JCPZ1397TMJ3N8VF6Y', 'country', 'cg', NULL, NULL, 'serzo_01JYAB33JCHVS7PDEXNTZJKMC8', NULL, NULL, '2025-06-21 22:52:33.742+00', '2025-06-21 22:52:33.742+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYNV5RWMBDCV3WQS6A8', 'country', 'af', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYNC17KANRK6SZT7A8P', 'country', 'al', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYNWPJT28RD491VW2RN', 'country', 'dz', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPGXKDFC7S607HSGKB', 'country', 'as', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP0JKJJE8Y7GAA6ZED', 'country', 'ad', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPAF9GJ17AVCC2WBJ7', 'country', 'ao', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPD24CXG0ZYMRXWEC2', 'country', 'ai', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPB00QVNGGSDW0CWQW', 'country', 'aq', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPTQHA003HSSZXM161', 'country', 'ag', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPBRB4E54X7FE5NB27', 'country', 'ar', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP96T9CAWTDWDP9P2K', 'country', 'am', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPGRSF4GDHEFPRBQEP', 'country', 'aw', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP31RPXH77JB9Q64PF', 'country', 'au', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPV3QK21VJ9BBA6SRW', 'country', 'at', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPDYY7K0QRDF6GSXHZ', 'country', 'az', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPXJ28ACWSEQXP4A9C', 'country', 'bs', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPQ2J8V3QC0TPSK5BJ', 'country', 'bh', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP9HFC51ERKCEVRB9D', 'country', 'bd', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYPCN2GJNCH419HN16S', 'country', 'bb', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP0KW57HRW8F539E9X', 'country', 'by', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP5TX066S3N83ASEBT', 'country', 'be', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYP645307TW1XJBPVRE', 'country', 'bz', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQRM080B4A8G6D2VFE', 'country', 'bj', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQZMRDZTYQFTA6PT2Q', 'country', 'bm', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQKWS4FGTWK2B3Q9ZE', 'country', 'bt', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQ4TT8HNE9JF91CKZ8', 'country', 'bo', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQ48CK5GM0WK6TFSDJ', 'country', 'bq', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQYQ7T7GY07ZKN2J2T', 'country', 'ba', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQ3AJZX2R1NTSYJHJK', 'country', 'bw', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQKQKFTAXC3RRGRNNZ', 'country', 'bv', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQTY6TG23ZDP36NPJR', 'country', 'br', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQQAH241P0VPMK98H3', 'country', 'io', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQD7BEQZ5CE0QPNXRE', 'country', 'bn', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQAPR8QQZF7B8RK3W8', 'country', 'bg', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQJP29QZRC4XF9D6BY', 'country', 'bf', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQVHJTKQ2MBQYBMR95', 'country', 'bi', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYQ9TK2PBQCFF19Q4GR', 'country', 'kh', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRNXWPJZFTBWP02MP0', 'country', 'cm', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRD1F3TQ6MEG7P4Z5G', 'country', 'ca', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRQZN57QV6KE4HGJTR', 'country', 'cv', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYR7P4EK0XWQE0M962P', 'country', 'ky', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRVK21NCEVQNJJZWG8', 'country', 'cf', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRT8MXCC7RNS96HQZC', 'country', 'td', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYRM5P6Q1YSSW2Q8XGX', 'country', 'cl', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYS3PRCRPDM3YSF2WDD', 'country', 'cn', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYS0XHMDKN87BC9VZ0R', 'country', 'cx', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYS36TE8GZCZQ1XRMCZ', 'country', 'cc', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYS558YKDEXXE7YP950', 'country', 'co', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYSY2YHS0TQGKDGRS6K', 'country', 'km', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);
INSERT INTO public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) VALUES ('fgz_01JYAB3TYSRV3KXGX9WPZ6CXS6', 'country', 'cg', NULL, NULL, 'serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', NULL, NULL, '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TAZ7NNVF6GYMK0QSH62', 'http://localhost:9002/medusa-media/IMG_3711-01JY9VRVBPHB39XVFNDXK6YKX4.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TAZH2389W5FVNZNNBXX', 'http://localhost:9002/medusa-media/IMG_3714-01JY9VRVBR8X5VW65YTFXVWY2V.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '1', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSDEVJ8RQ1SAVD7NZ0Y', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSE3H631WKBZQXYER7N', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-back.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '1', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSE6EH6NQV9XJEK2RBY', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-front.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '2', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSEHPQBQ7RHEM408SSR', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-back.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '3', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSFF929YHC2QJ3R74EJ', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '0', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSFGYZMJT20P91M53W5', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-back.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '1', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSFKFY5R1KKAZTDF9MR', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '0', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSFX3PQ9ESKXZB0TTAB', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-back.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '1', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSG5J7EXAHW8KW08YTY', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '0', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JX0A3KSGCF657JB49D5WR3YT', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-back.png', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL, '1', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JWY4FNVZQ054VEQSWWCQZRN0', 'http://minio:9000/medusa-media/download (1)-01JWY4FNTX32M3AS1J6XR7R4N5.jpeg', NULL, '2025-06-04 18:50:30.658+00', '2025-06-07 12:20:23.857+00', '2025-06-07 12:20:23.846+00', '0', 'prod_01JWY4FNVVT9DP6FY5WFJBCCP5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JWY4FNVZCQB4X5XHEBRCS23H', 'http://minio:9000/medusa-media/download-01JWY4FNTXPJNDCSNE26Q1ANR7.jpeg', NULL, '2025-06-04 18:50:30.659+00', '2025-06-07 12:20:23.857+00', '2025-06-07 12:20:23.846+00', '1', 'prod_01JWY4FNVVT9DP6FY5WFJBCCP5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TAZJ1YHMCS5ZFRSC153', 'http://localhost:9002/medusa-media/IMG_3715-01JY9VRVBS4ZAZEJ63QY1S292F.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '2', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TAZ7QSZ5MR9VGJTPQD6', 'http://localhost:9002/medusa-media/IMG_3716-01JY9VRVBS7FCFEF3HDF5SDPKR.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '3', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TAZNHHSMKD7GSS7XQGK', 'http://localhost:9002/medusa-media/IMG_3718-01JY9VRVBS7T0JZ20394Y4A8TZ.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '4', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TB06KB8SQC4ZJRHQQXM', 'http://localhost:9002/medusa-media/IMG_3719-01JY9VRVBSH511ZQY5FKGVQE7C.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '5', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TB0NMT5ED88B49C4AHA', 'http://localhost:9002/medusa-media/b2d66965-0845-482c-8cc6-d6fb3195486c-01JYCJJAW4MF1V5Z5504272R1W.jpg', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '6', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TB0Y9SJPY2YRDR715TF', 'http://localhost:9002/medusa-media/445a6b31-90e9-402e-9e22-d21d88b62f98-01JYCJJAW5PPQQ9MM6H9JXZ13W.jpg', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '7', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCK9TB0AHHZECW0KEQEZK6Q', 'http://localhost:9002/medusa-media/IMG_3710-01JYCK9T9GV40T4000JET21E6B.JPG', NULL, '2025-06-22 19:54:31.125326+00', '2025-06-22 19:54:31.125326+00', NULL, '8', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JY5F9DN0Q88Q4Z1SC2ZYFMXY', 'http://localhost:9002/medusa-media/IMG_3698-01JY5D42TCFZ11FQ4XCMCJQ5FW.JPG', NULL, '2025-06-20 01:29:42.81036+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00', '0', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JY5F9DN1YTW6S73SYFYSYTNQ', 'http://localhost:9002/medusa-media/IMG_3699-01JY5D42TD4RHQGRK9QEV1NY0E.JPG', NULL, '2025-06-20 01:29:42.81036+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00', '1', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JY5F9DN1ZJ5DSKH9ZFH77N8Q', 'http://localhost:9002/medusa-media/IMG_3700-01JY5D42TD2RDPXATTBQTJN9WT.JPG', NULL, '2025-06-20 01:29:42.81036+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00', '2', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JY5F9DN1YMXYH29SAW1KHS4Z', 'http://localhost:9002/medusa-media/IMG_3701-01JY5D42TD752ND7102VXEPWC2.JPG', NULL, '2025-06-20 01:29:42.81036+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00', '3', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYA7Z264CJYCXJNSWM5WYV1J', 'http://localhost:9002/medusa-media/1ceb8d5b-8a7c-4f44-93a8-f0c7eb1899d7-01JYA7N2Z3JMS463P7SYVKDMYS.jpg', NULL, '2025-06-21 21:57:55.519424+00', '2025-06-21 22:01:43.899+00', '2025-06-21 22:01:43.892+00', '0', 'prod_01JYA7N305WXX7XTK350A5VP2F');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYA7Z264GYC19TET24G08ZTF', 'http://localhost:9002/medusa-media/6cd49cbd-490c-45b7-baea-1a01b5091152-01JYA7Z24WG1P35YAZ69W9S2EF.jpg', NULL, '2025-06-21 21:57:55.519424+00', '2025-06-21 22:01:43.899+00', '2025-06-21 22:01:43.892+00', '1', 'prod_01JYA7N305WXX7XTK350A5VP2F');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0R074GKQX137CP63DP', 'http://localhost:9002/medusa-media/IMG_3989-01JYCMG3ZZVQ1P2816NKGKX25M.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '0', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0R4ZC50NYSA9B8G9MB', 'http://localhost:9002/medusa-media/IMG_3990-01JYCMG3ZZAMJNHQT28ZTJAV0Y.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '1', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0RMCDCW7GWZXGYSCQC', 'http://localhost:9002/medusa-media/IMG_3991-01JYCMG3ZZ7DE8EC1ZEGE77783.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '2', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0SW8YYEYJ5CVS3GGCQ', 'http://localhost:9002/medusa-media/IMG_3992-01JYCMG3ZZE5ZMM4A3G41A2VSY.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '3', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0S9Q6K2HSZVE33TVD6', 'http://localhost:9002/medusa-media/IMG_3994-01JYCMG400AQTT2B34ERQW5TJD.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '4', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0SPKZVQ6MP98WAMSM8', 'http://localhost:9002/medusa-media/IMG_5232-01JYCMG400CP1CQ6NGPAW8BDF9.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '5', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0SFW7ET8MQAWMSNP8E', 'http://localhost:9002/medusa-media/1-01JYCNCDH7ZQ3DH6EH9YM0CE1T.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '6', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0SADZ8JH6YTD11YVGA', 'http://localhost:9002/medusa-media/2-01JYCNCDH7S2RNS508S5SR0Q25.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '7', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0SWJYQH4FJYS7DNGTV', 'http://localhost:9002/medusa-media/4-01JYCNCDH79XYREZY1QJN2B6XZ.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '8', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0TZEE3M2C3XADFTBCS', 'http://localhost:9002/medusa-media/5-01JYCNCDH7BR82BADMWW7HDNHR.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '9', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0T2QEXT12GJHHGDGA8', 'http://localhost:9002/medusa-media/6-01JYCNCDH7ZD47WFFQ9S7339HV.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '10', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0T79P362RRYZJ4JY2G', 'http://localhost:9002/medusa-media/7-01JYCNCDH7CWFWV694C2PC01NJ.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '11', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0TXXXG7C9XZN1SG9VR', 'http://localhost:9002/medusa-media/8-01JYCNCDH86XXAVZAXVAPGBQNY.JPG', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '12', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0THG9HR8S4PXCD0K6X', 'http://localhost:9002/medusa-media/IMG_3993-01JYCP5CZ50MAYN2XJM52KAX3A.png', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '13', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');
INSERT INTO public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) VALUES ('img_01JYCP5D0TN4Y3GMJ4MATY9W2B', 'http://localhost:9002/medusa-media/IMG_3995-01JYCP5CZ5WE5QKZ9Q4YVV4S5Z.png', NULL, '2025-06-22 20:44:32.140293+00', '2025-06-22 20:44:32.140293+00', NULL, '14', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV');


--
-- Data for Name: inventory_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNJRC8YZYSA0MW73VT', '2025-06-05 15:07:15.734+00', '2025-06-05 15:07:15.734+00', NULL, 'SHIRT-S-BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'S / Black', 'S / Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWN2XA0E30F4324MC67', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-S-WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'S / White', 'S / White', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-M-BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'M / Black', 'M / Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWN2WBJT298RVEBXE05', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-M-WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'M / White', 'M / White', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNH0NSC47RHZWDPDD8', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-L-BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'L / Black', 'L / Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNS61VQ3DZ8YH411FJ', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-L-WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'L / White', 'L / White', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNF5RBK3CGQEVZDGKT', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-XL-BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'XL / Black', 'XL / Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNTS2EGSGA9Y32KRV2', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHIRT-XL-WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'XL / White', 'XL / White', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNSQMERPGQN690JTQT', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATSHIRT-S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'S', 'S', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWNMBHP7T33HW8JRMDS', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATSHIRT-M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'M', 'M', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPQ84WKPA1VRJGW4TB', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATSHIRT-L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'L', 'L', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWP8NYG254H9ZPKZR7W', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATSHIRT-XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'XL', 'XL', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPKWAXZVEWB9BE6BG5', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATPANTS-S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'S', 'S', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPEH5C400Z4NFQ9WPZ', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATPANTS-M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'M', 'M', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPSYXX4ZHX6EECE58T', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATPANTS-L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'L', 'L', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPD6F9CKSM0VP6K73B', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SWEATPANTS-XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'XL', 'XL', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWP4RH1C6PJEPTVEH0T', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHORTS-S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'S', 'S', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPRPEG8EXMK34BASWW', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHORTS-M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'M', 'M', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPANKSKJ819ZNAETMY', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHORTS-L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'L', 'L', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JX0A3KWPDY1D9SW3ZDB70M1A', '2025-06-05 15:07:15.735+00', '2025-06-05 15:07:15.735+00', NULL, 'SHORTS-XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'XL', 'XL', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RHMD2BTEHS4WM60CPSA26', '2025-06-21 17:28:26.786+00', '2025-06-21 17:28:26.786+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Indigo', 'Indigo', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RJY2GQT4ZH6WGEZS3F2VY', '2025-06-21 17:29:09.457+00', '2025-06-21 17:29:09.457+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Olive green', 'Olive green', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RKVYYNE2FW6FBKJPNCSDH', '2025-06-21 17:29:40.063+00', '2025-06-21 17:29:40.063+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Dark green', 'Dark green', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RMNZS6WMN4PJZT0EVCKP9', '2025-06-21 17:30:06.713+00', '2025-06-21 17:30:06.713+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Navy blue', 'Navy blue', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RNEM918WWMNG6RA9A3AQ6', '2025-06-21 17:30:31.945+00', '2025-06-21 17:30:31.945+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Royal blue', 'Royal blue', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RP6J8S3SZ5TR3VT313ZDN', '2025-06-21 17:30:56.456+00', '2025-06-21 17:30:56.456+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Fuchsia pink', 'Fuchsia pink', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RPVVGYCEZFHXES80JMG56', '2025-06-21 17:31:18.256+00', '2025-06-21 17:31:18.256+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Red', 'Red', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RQT80SQFPXDR9WH5EB206', '2025-06-21 17:31:49.376+00', '2025-06-21 17:31:49.376+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Orange', 'Orange', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9RSH7CRG4GQP8TRKGPNJK4', '2025-06-21 17:32:45.676+00', '2025-06-21 17:32:45.676+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Gray', 'Gray', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9J88FTEC5XDEH7WPJVA8RM', '2025-06-21 15:38:28.218+00', '2025-06-21 17:40:44.094+00', '2025-06-21 17:40:44.093+00', 'SHORTS-S-GS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Brynant D', 'Brynant D', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY4CQ9026AWYJ7YCRKD9CKRS', '2025-06-19 15:25:36.642+00', '2025-06-21 17:41:51.215+00', '2025-06-21 17:41:51.215+00', 'LYN-DW-TUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Default variant', 'Default variant', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JY9PHVP2787N8MXME284VF8G', '2025-06-21 16:53:37.09+00', '2025-06-21 21:34:46.367+00', NULL, 'NO SKU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Black Tumbler', 'Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA6P1KMM3DYQVHV638BS15R', '2025-06-21 21:35:31.444+00', '2025-06-21 21:35:31.444+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Black', 'Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVY90F7BVY002DJFM25T', '2025-06-21 22:06:00.651+00', '2025-06-21 22:06:00.651+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'White', 'White', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYACTV3MPVF9PCXV5V0', '2025-06-21 22:06:00.651+00', '2025-06-21 22:06:00.651+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Peach', 'Peach', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYAP1W61G070F2041SK', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Black', 'Black', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYA6CYKBEMRKRGCC3HP', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Charcoal', 'Charcoal', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYAKP6GH8F6V1KP3SEN', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Stormy sea', 'Stormy sea', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYAYVZ29VZS6B0TMP1V', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Rusty red', 'Rusty red', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYARRTA65QPJH9ZK7H1', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Klein blue', 'Klein blue', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYA9NYZ3SPZNXK5XW9M', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Red', 'Red', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYAE4YV3V2F4XEWVXYG', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Sakura', 'Sakura', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYBHRD38FF6HD72YV11', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Purple', 'Purple', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYBNJ87HZ6741SV12MR', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Barbie pink', 'Barbie pink', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYB2T7SMYN12T87M8VA', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Light blue', 'Light blue', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYB60PSH6YTKDN0N33P', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Bay leaf', 'Bay leaf', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYB72SG15TV8SERSYWC', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Lime green', 'Lime green', NULL, NULL);
INSERT INTO public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) VALUES ('iitem_01JYA8DVYB0DSP904SYEGDS56A', '2025-06-21 22:06:00.652+00', '2025-06-21 22:06:00.652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 'Lake green', 'Lake green', NULL, NULL);


--
-- Data for Name: inventory_level; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1AA5EKXGR4CRKTTHYF', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWN2WBJT298RVEBXE05', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1B6B8DJB07CN2D1MFQ', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWN2XA0E30F4324MC67', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1BNKSGCP0YJNFZAZGZ', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWNF5RBK3CGQEVZDGKT', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1B0TG8AN5H9VHF88DF', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWNS61VQ3DZ8YH411FJ', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CZWB4GAA7NC8NSP1T', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWNSQMERPGQN690JTQT', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CY6352084VH0YQ1FT', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWNTS2EGSGA9Y32KRV2', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CJYBGTBXW5QEESYWY', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWP4RH1C6PJEPTVEH0T', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CKEGYQ2P3X48A8QF7', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWP8NYG254H9ZPKZR7W', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CEWS6C5JJZ7JXSQDV', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPANKSKJ819ZNAETMY', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CFK45FA96F53YCAHH', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPD6F9CKSM0VP6K73B', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CPAB6ABCYSZC3PF4F', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPDY1D9SW3ZDB70M1A', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CK86GW9Z2FJ8TKRP3', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPKWAXZVEWB9BE6BG5', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CTGGGE0M15QT7WPBH', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPQ84WKPA1VRJGW4TB', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1C2J5G1PQ2G7P1HY8C', '2025-06-05 15:07:15.885+00', '2025-06-05 15:07:15.885+00', NULL, 'iitem_01JX0A3KWPSYXX4ZHX6EECE58T', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '0', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1BF20NVJK848MTSZ4Q', '2025-06-05 15:07:15.885+00', '2025-06-05 16:10:02.215+00', NULL, 'iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '4', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "4", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1BPJNRQE00CCMXGDGK', '2025-06-05 15:07:15.885+00', '2025-06-25 13:02:06.69+00', NULL, 'iitem_01JX0A3KWNMBHP7T33HW8JRMDS', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '5', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "5", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1CKKTV2B70X3MGNKE4', '2025-06-05 15:07:15.885+00', '2025-06-05 15:41:02.963+00', NULL, 'iitem_01JX0A3KWPEH5C400Z4NFQ9WPZ', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '999999', '0', '0', NULL, '{"value": "999999", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1BHKR9T2RMDYZYET12', '2025-06-05 15:07:15.885+00', '2025-06-05 20:34:02.06+00', NULL, 'iitem_01JX0A3KWNJRC8YZYSA0MW73VT', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '2', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "2", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1BPHZD0VP8KC3M94NN', '2025-06-05 15:07:15.885+00', '2025-06-05 15:50:35.66+00', NULL, 'iitem_01JX0A3KWNH0NSC47RHZWDPDD8', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '2', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "2", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9QC72GB4FHVM9X9JZS2V54', '2025-06-21 17:08:00.72+00', '2025-06-21 17:08:10.923+00', NULL, 'iitem_01JY9PHVP2787N8MXME284VF8G', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9JAX3714RTF1HNPJ4NC74N', '2025-06-21 15:39:54.855+00', '2025-06-21 17:40:44.102+00', '2025-06-21 17:40:44.093+00', 'iitem_01JY9J88FTEC5XDEH7WPJVA8RM', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '0', '0', '0', NULL, '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY5DH8ZVCBSB1AMR54B9N8TN', '2025-06-20 00:59:03.035+00', '2025-06-21 17:41:51.221+00', '2025-06-21 17:41:51.215+00', 'iitem_01JY4CQ9026AWYJ7YCRKD9CKRS', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '100', '0', '0', NULL, '{"value": "100", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SJZQ5D0WN6PSVA2W4T0CH', '2025-06-21 17:46:39.718+00', '2025-06-21 17:46:51.351+00', NULL, 'iitem_01JY9RHMD2BTEHS4WM60CPSA26', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SMHA3HBHDFYD4454YZDWD', '2025-06-21 17:47:30.499+00', '2025-06-21 17:47:42.206+00', NULL, 'iitem_01JY9RJY2GQT4ZH6WGEZS3F2VY', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z53J7EEA4PN24DWNH5', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RKVYYNE2FW6FBKJPNCSDH', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z68DYAHZ9SH83JB6X6', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RMNZS6WMN4PJZT0EVCKP9', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z607F22BNTYT44MKZF', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RNEM918WWMNG6RA9A3AQ6', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z6KMCPE2B6Q7NTT7C7', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RP6J8S3SZ5TR3VT313ZDN', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z65MQJ9GBW5K3MH5MJ', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RPVVGYCEZFHXES80JMG56', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z6GBYN170MVDD7Q5ED', '2025-06-21 17:49:34.054+00', '2025-06-21 17:49:34.054+00', NULL, 'iitem_01JY9RSH7CRG4GQP8TRKGPNJK4', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA6PCAJ0R03F9HKQK628DZD', '2025-06-21 21:35:42.418+00', '2025-06-21 21:35:52.042+00', NULL, 'iitem_01JYA6P1KMM3DYQVHV638BS15R', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '25', '0', '0', NULL, '{"value": "25", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKBQRGWFP1Z980FV7YS', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVY90F7BVY002DJFM25T', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKBF78CJGFGWJQMWGVK', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYA6CYKBEMRKRGCC3HP', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKBMENZ37QVC8HRZ6B3', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYA9NYZ3SPZNXK5XW9M', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKBW6SK7T1ATBCG72XS', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYACTV3MPVF9PCXV5V0', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKB99DZEJ5PP2X9KXM2', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYAE4YV3V2F4XEWVXYG', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKB99GS1FG0KRK51SW8', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYAKP6GH8F6V1KP3SEN', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKBNHFRGG7KGWW1EJX3', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYAP1W61G070F2041SK', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCPBRB4CG8TGJYBEFK', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYARRTA65QPJH9ZK7H1', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCR7WKTGZ177X88MFT', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYAYVZ29VZS6B0TMP1V', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCG6HM1GBNSQTJ14GE', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYB0DSP904SYEGDS56A', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCF0QQ7P0KTCSVN9DM', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYB2T7SMYN12T87M8VA', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCB4MWAKJZM55WATN2', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYB60PSH6YTKDN0N33P', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCY4Q4YR3ZQRD891TX', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYB72SG15TV8SERSYWC', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKC9PYRDJFCYAB7HSJQ', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYBHRD38FF6HD72YV11', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JYA8GXKCE0GJ3DPJ1DD28QB2', '2025-06-21 22:07:40.653+00', '2025-06-21 22:07:40.653+00', NULL, 'iitem_01JYA8DVYBNJ87HZ6741SV12MR', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '20', '0', '0', NULL, '{"value": "20", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JX0A3M1C3P3PWSWZ2NGDGYQC', '2025-06-05 15:07:15.885+00', '2025-06-25 13:01:20.342+00', NULL, 'iitem_01JX0A3KWPRPEG8EXMK34BASWW', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1000000', '1', '0', NULL, '{"value": "1000000", "precision": 20}', '{"value": "1", "precision": 20}', '{"value": "0", "precision": 20}');
INSERT INTO public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) VALUES ('ilev_01JY9SR9Z6H760XEPHX6R1BJVZ', '2025-06-21 17:49:34.054+00', '2025-06-29 17:52:52.207+00', NULL, 'iitem_01JY9RQT80SQFPXDR9WH5EB206', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '24', '0', '0', NULL, '{"value": "24", "precision": 20}', '{"value": "0", "precision": 20}', '{"value": "0", "precision": 20}');


--
-- Data for Name: invite; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.invite


--
-- Data for Name: link_module_migrations; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('1', 'cart_payment_collection', '{"toModel": "payment_collection", "toModule": "payment", "fromModel": "cart", "fromModule": "cart"}', '2025-06-04 18:25:42.561261');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('2', 'cart_promotion', '{"toModel": "promotions", "toModule": "promotion", "fromModel": "cart", "fromModule": "cart"}', '2025-06-04 18:25:42.580503');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('3', 'location_fulfillment_provider', '{"toModel": "fulfillment_provider", "toModule": "fulfillment", "fromModel": "location", "fromModule": "stock_location"}', '2025-06-04 18:25:42.589777');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('4', 'location_fulfillment_set', '{"toModel": "fulfillment_set", "toModule": "fulfillment", "fromModel": "location", "fromModule": "stock_location"}', '2025-06-04 18:25:42.598311');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('5', 'order_cart', '{"toModel": "cart", "toModule": "cart", "fromModel": "order", "fromModule": "order"}', '2025-06-04 18:25:42.606002');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('6', 'order_payment_collection', '{"toModel": "payment_collection", "toModule": "payment", "fromModel": "order", "fromModule": "order"}', '2025-06-04 18:25:42.606507');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('7', 'order_fulfillment', '{"toModel": "fulfillments", "toModule": "fulfillment", "fromModel": "order", "fromModule": "order"}', '2025-06-04 18:25:42.606352');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('8', 'order_promotion', '{"toModel": "promotion", "toModule": "promotion", "fromModel": "order", "fromModule": "order"}', '2025-06-04 18:25:42.606644');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('11', 'publishable_api_key_sales_channel', '{"toModel": "sales_channel", "toModule": "sales_channel", "fromModel": "api_key", "fromModule": "api_key"}', '2025-06-04 18:25:42.607863');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('9', 'return_fulfillment', '{"toModel": "fulfillments", "toModule": "fulfillment", "fromModel": "return", "fromModule": "order"}', '2025-06-04 18:25:42.606776');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('10', 'product_sales_channel', '{"toModel": "sales_channel", "toModule": "sales_channel", "fromModel": "product", "fromModule": "product"}', '2025-06-04 18:25:42.606918');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('12', 'product_variant_inventory_item', '{"toModel": "inventory", "toModule": "inventory", "fromModel": "variant", "fromModule": "product"}', '2025-06-04 18:25:42.607189');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('13', 'product_variant_price_set', '{"toModel": "price_set", "toModule": "pricing", "fromModel": "variant", "fromModule": "product"}', '2025-06-04 18:25:42.607468');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('14', 'region_payment_provider', '{"toModel": "payment_provider", "toModule": "payment", "fromModel": "region", "fromModule": "region"}', '2025-06-04 18:25:42.609832');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('15', 'sales_channel_stock_location', '{"toModel": "location", "toModule": "stock_location", "fromModel": "sales_channel", "fromModule": "sales_channel"}', '2025-06-04 18:25:42.626332');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('16', 'shipping_option_price_set', '{"toModel": "price_set", "toModule": "pricing", "fromModel": "shipping_option", "fromModule": "fulfillment"}', '2025-06-04 18:25:42.626571');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('17', 'product_shipping_profile', '{"toModel": "shipping_profile", "toModule": "fulfillment", "fromModel": "product", "fromModule": "product"}', '2025-06-04 18:25:42.627613');
INSERT INTO public.link_module_migrations (id, table_name, link_descriptor, created_at) VALUES ('18', 'customer_account_holder', '{"toModel": "account_holder", "toModule": "payment", "fromModel": "customer", "fromModule": "customer"}', '2025-06-04 18:25:42.627959');


--
-- Data for Name: location_fulfillment_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.location_fulfillment_provider (stock_location_id, fulfillment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('sloc_01JX0A3KKGRJTBGP5X0T4X18TH', 'manual_manual', 'locfp_01JX0A3KKR52NY05Z2K5SYJD48', '2025-06-05 15:07:15.448275+00', '2025-06-05 15:07:15.448275+00', NULL);


--
-- Data for Name: location_fulfillment_set; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.location_fulfillment_set (stock_location_id, fulfillment_set_id, id, created_at, updated_at, deleted_at) VALUES ('sloc_01JX0A3KKGRJTBGP5X0T4X18TH', 'fuset_01JX0A3KMJW8DBCT3P1YEMYMAA', 'locfs_01JX0A3KN57HZHKH19VFC8HVZY', '2025-06-05 15:07:15.492479+00', '2025-06-05 15:07:15.492479+00', NULL);
INSERT INTO public.location_fulfillment_set (stock_location_id, fulfillment_set_id, id, created_at, updated_at, deleted_at) VALUES ('sloc_01JX0A3KKGRJTBGP5X0T4X18TH', 'fuset_01JYAAN0Q3MT67JYBNS47070DG', 'locfs_01JYAAN0QMVFW41XBMS23A0M6P', '2025-06-21 22:44:52.082912+00', '2025-06-21 22:45:09.055+00', '2025-06-21 22:45:09.055+00');
INSERT INTO public.location_fulfillment_set (stock_location_id, fulfillment_set_id, id, created_at, updated_at, deleted_at) VALUES ('sloc_01JYAB28FHWZN420F7F7FVRH4Q', 'fuset_01JYAB2P65H33PF5YZN54Z7GXA', 'locfs_01JYAB2P69STQX3EQGEX2QNQ2F', '2025-06-21 22:52:20.041469+00', '2025-06-21 22:52:20.041469+00', NULL);
INSERT INTO public.location_fulfillment_set (stock_location_id, fulfillment_set_id, id, created_at, updated_at, deleted_at) VALUES ('sloc_01JYAB28FHWZN420F7F7FVRH4Q', 'fuset_01JYAB3A0N1PS59C5SSK1XQG94', 'locfs_01JYAB3A12BSK7J2Q45CCDGJQA', '2025-06-21 22:52:40.353508+00', '2025-06-21 22:52:40.353508+00', NULL);


--
-- Data for Name: mikro_orm_migrations; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('1', 'Migration20231228143900', '2025-06-04 18:25:39.42831+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('2', 'Migration20241206123341', '2025-06-04 18:25:39.42831+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('3', 'Migration20250120111059', '2025-06-04 18:25:39.42831+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('4', 'Migration20250128174354', '2025-06-04 18:25:39.42831+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('5', 'Migration20240307161216', '2025-06-04 18:25:39.526257+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('6', 'Migration20241210073813', '2025-06-04 18:25:39.526257+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('7', 'Migration20250106142624', '2025-06-04 18:25:39.526257+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('8', 'Migration20250120110820', '2025-06-04 18:25:39.526257+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('9', 'Migration20240307132720', '2025-06-04 18:25:39.585705+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('10', 'Migration20240719123015', '2025-06-04 18:25:39.585705+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('11', 'Migration20241213063611', '2025-06-04 18:25:39.585705+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('12', 'InitialSetup20240401153642', '2025-06-04 18:25:39.698264+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('13', 'Migration20240601111544', '2025-06-04 18:25:39.698264+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('14', 'Migration202408271511', '2025-06-04 18:25:39.698264+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('15', 'Migration20241122120331', '2025-06-04 18:25:39.698264+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('16', 'Migration20241125090957', '2025-06-04 18:25:39.698264+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('17', 'Migration20230929122253', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('18', 'Migration20240322094407', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('19', 'Migration20240322113359', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('20', 'Migration20240322120125', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('21', 'Migration20240626133555', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('22', 'Migration20240704094505', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('23', 'Migration20241127114534', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('24', 'Migration20241127223829', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('25', 'Migration20241128055359', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('26', 'Migration20241212190401', '2025-06-04 18:25:39.958466+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('27', 'Migration20240227120221', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('28', 'Migration20240617102917', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('29', 'Migration20240624153824', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('30', 'Migration20241211061114', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('31', 'Migration20250113094144', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('32', 'Migration20250120110700', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('33', 'Migration20250226130616', '2025-06-04 18:25:40.204168+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('34', 'Migration20240124154000', '2025-06-04 18:25:40.387158+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('35', 'Migration20240524123112', '2025-06-04 18:25:40.387158+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('36', 'Migration20240602110946', '2025-06-04 18:25:40.387158+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('37', 'Migration20241211074630', '2025-06-04 18:25:40.387158+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('38', 'Migration20240115152146', '2025-06-04 18:25:40.470696+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('39', 'Migration20240222170223', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('40', 'Migration20240831125857', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('41', 'Migration20241106085918', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('42', 'Migration20241205095237', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('43', 'Migration20241216183049', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('44', 'Migration20241218091938', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('45', 'Migration20250120115059', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('46', 'Migration20250212131240', '2025-06-04 18:25:40.507744+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('47', 'Migration20240205173216', '2025-06-04 18:25:40.664214+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('48', 'Migration20240624200006', '2025-06-04 18:25:40.664214+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('49', 'Migration20250120110744', '2025-06-04 18:25:40.664214+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('50', 'InitialSetup20240221144943', '2025-06-04 18:25:40.728246+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('51', 'Migration20240604080145', '2025-06-04 18:25:40.728246+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('52', 'Migration20241205122700', '2025-06-04 18:25:40.728246+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('53', 'InitialSetup20240227075933', '2025-06-04 18:25:40.777335+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('54', 'Migration20240621145944', '2025-06-04 18:25:40.777335+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('55', 'Migration20241206083313', '2025-06-04 18:25:40.777335+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('56', 'Migration20240227090331', '2025-06-04 18:25:40.830304+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('57', 'Migration20240710135844', '2025-06-04 18:25:40.830304+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('58', 'Migration20240924114005', '2025-06-04 18:25:40.830304+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('59', 'Migration20241212052837', '2025-06-04 18:25:40.830304+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('60', 'InitialSetup20240228133303', '2025-06-04 18:25:40.936695+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('61', 'Migration20240624082354', '2025-06-04 18:25:40.936695+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('62', 'Migration20240225134525', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('63', 'Migration20240806072619', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('64', 'Migration20241211151053', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('65', 'Migration20250115160517', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('66', 'Migration20250120110552', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('67', 'Migration20250123122334', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('68', 'Migration20250206105639', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('69', 'Migration20250207132723', '2025-06-04 18:25:40.975652+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('70', 'Migration20240219102530', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('71', 'Migration20240604100512', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('72', 'Migration20240715102100', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('73', 'Migration20240715174100', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('74', 'Migration20240716081800', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('75', 'Migration20240801085921', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('76', 'Migration20240821164505', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('77', 'Migration20240821170920', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('78', 'Migration20240827133639', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('79', 'Migration20240902195921', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('80', 'Migration20240913092514', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('81', 'Migration20240930122627', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('82', 'Migration20241014142943', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('83', 'Migration20241106085223', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('84', 'Migration20241129124827', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('85', 'Migration20241217162224', '2025-06-04 18:25:41.181036+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('86', 'Migration20240205025928', '2025-06-04 18:25:41.489978+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('87', 'Migration20240529080336', '2025-06-04 18:25:41.489978+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('88', 'Migration20241202100304', '2025-06-04 18:25:41.489978+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('89', 'Migration20240214033943', '2025-06-04 18:25:41.58959+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('90', 'Migration20240703095850', '2025-06-04 18:25:41.58959+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('91', 'Migration20241202103352', '2025-06-04 18:25:41.58959+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('92', 'Migration20240311145700_InitialSetupMigration', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('93', 'Migration20240821170957', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('94', 'Migration20240917161003', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('95', 'Migration20241217110416', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('96', 'Migration20250113122235', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('97', 'Migration20250120115002', '2025-06-04 18:25:41.747086+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('98', 'Migration20240509083918_InitialSetupMigration', '2025-06-04 18:25:42.00298+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('99', 'Migration20240628075401', '2025-06-04 18:25:42.00298+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('100', 'Migration20240830094712', '2025-06-04 18:25:42.00298+00');
INSERT INTO public.mikro_orm_migrations (id, name, executed_at) VALUES ('101', 'Migration20250120110514', '2025-06-04 18:25:42.00298+00');


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0BAYNKCFCGTX2JNVMMFC4B', 'bezyfij@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0BAYF17QN2XFYTETW5NB2V", "email": "bezyfij@mailinator.com", "items": [{"id": "ordli_01JX0BAYF2H2KQV0P2Q5HFFS02", "title": "M", "detail": {"id": "orditem_01JX0BAYF33ZMHY9GSECQSB7MZ", "item_id": "ordli_01JX0BAYF2H2KQV0P2Q5HFFS02", "version": 1, "metadata": null, "order_id": "order_01JX0BAYF17QN2XFYTETW5NB2V", "quantity": 2, "created_at": "2025-06-05T15:28:44.516Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:28:44.516Z", "raw_quantity": {"value": "2", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 2, "subtitle": "Medusa Sweatshirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png", "created_at": "2025-06-05T15:28:44.516Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBNHJQBXZMED5D3PA8", "unit_price": 10, "updated_at": "2025-06-05T15:28:44.516Z", "variant_id": "variant_01JX0A3KVGMTFCZS7JXZRSZVX5", "variant_sku": "SWEATSHIRT-M", "product_type": null, "raw_quantity": {"value": "2", "precision": 20}, "product_title": "Medusa Sweatshirt", "variant_title": "M", "product_handle": "sweatshirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 30, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 30, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 30, "original_order_total": 30, "raw_accounting_total": {"value": "30", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "30", "precision": 20}, "raw_current_order_total": {"value": "30", "precision": 20}, "raw_original_order_total": {"value": "30", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:28:44.516Z", "deleted_at": null, "display_id": 1, "updated_at": "2025-06-05T15:28:44.516Z", "canceled_at": null, "customer_id": "cus_01JX0BA7R51QEG2XSYVG8K2YER", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0BA7RWRRP49WX9K1VX1ETA"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0BA7RWEZHYQY7N49CB8605", "city": "Minus sint vel place", "phone": "+1 (939) 727-1268", "company": "Cox Johns Trading", "metadata": null, "province": "Aliquid nostrum porr", "address_1": "86 North First Drive", "address_2": "", "last_name": "Santana", "created_at": "2025-06-05T15:28:21.277Z", "deleted_at": null, "first_name": "Quintessa", "updated_at": "2025-06-05T15:28:21.277Z", "customer_id": null, "postal_code": "Mollitia est exercit", "country_code": "de"}, "billing_address_id": "caaddr_01JX0BA7RWRRP49WX9K1VX1ETA", "shipping_address_id": "caaddr_01JX0BA7RWEZHYQY7N49CB8605"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0BA7RWEZHYQY7N49CB8605", "city": "Minus sint vel place", "phone": "+1 (939) 727-1268", "company": "Cox Johns Trading", "metadata": null, "province": "Aliquid nostrum porr", "address_1": "86 North First Drive", "address_2": "", "last_name": "Santana", "created_at": "2025-06-05T15:28:21.277Z", "deleted_at": null, "first_name": "Quintessa", "updated_at": "2025-06-05T15:28:21.277Z", "customer_id": null, "postal_code": "Mollitia est exercit", "country_code": "de"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:28:44.724+00', '2025-06-05 15:28:46.684+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0BHJEA0EZN8VS523PC5X64', 'fegyl@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0BHJ9JK8Y2XEQ608FRBBGH", "email": "fegyl@mailinator.com", "items": [{"id": "ordli_01JX0BHJ9JRXC9R1M9KERSJ8TA", "title": "M", "detail": {"id": "orditem_01JX0BHJ9KTZD0KHW4PGJ2YH37", "item_id": "ordli_01JX0BHJ9JRXC9R1M9KERSJ8TA", "version": 1, "metadata": null, "order_id": "order_01JX0BHJ9JK8Y2XEQ608FRBBGH", "quantity": 3, "created_at": "2025-06-05T15:32:21.427Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:32:21.427Z", "raw_quantity": {"value": "3", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 3, "subtitle": "Medusa Sweatshirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png", "created_at": "2025-06-05T15:32:21.427Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBNHJQBXZMED5D3PA8", "unit_price": 10, "updated_at": "2025-06-05T15:32:21.427Z", "variant_id": "variant_01JX0A3KVGMTFCZS7JXZRSZVX5", "variant_sku": "SWEATSHIRT-M", "product_type": null, "raw_quantity": {"value": "3", "precision": 20}, "product_title": "Medusa Sweatshirt", "variant_title": "M", "product_handle": "sweatshirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 40, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "40", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:32:21.427Z", "deleted_at": null, "display_id": 2, "updated_at": "2025-06-05T15:32:21.427Z", "canceled_at": null, "customer_id": "cus_01JX0BH6MWTYTRDNA1T5SDHXM6", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG", "city": "Fugit voluptas nihi", "phone": "+1 (363) 532-4881", "company": "Mack Mcgowan LLC", "metadata": null, "province": "Reprehenderit perfer", "address_1": "725 Hague Street", "address_2": "", "last_name": "Acosta", "created_at": "2025-06-05T15:32:09.517Z", "deleted_at": null, "first_name": "Hammett", "updated_at": "2025-06-05T15:32:09.517Z", "customer_id": null, "postal_code": "Et consequatur qui ", "country_code": "de"}, "billing_address_id": "caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F", "shipping_address_id": "caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG", "city": "Fugit voluptas nihi", "phone": "+1 (363) 532-4881", "company": "Mack Mcgowan LLC", "metadata": null, "province": "Reprehenderit perfer", "address_1": "725 Hague Street", "address_2": "", "last_name": "Acosta", "created_at": "2025-06-05T15:32:09.517Z", "deleted_at": null, "first_name": "Hammett", "updated_at": "2025-06-05T15:32:09.517Z", "customer_id": null, "postal_code": "Et consequatur qui ", "country_code": "de"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:32:21.578+00', '2025-06-05 15:32:22.771+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0BMYMHKNKGE6WQYK6BK7HQ', 'gycyl@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0BMYF64VEDA5SNVFMRMJZ0", "email": "gycyl@mailinator.com", "items": [{"id": "ordli_01JX0BMYF7T4TJQVWMY09XXX4E", "title": "M", "detail": {"id": "orditem_01JX0BMYF715HY0HGA06S8QEWA", "item_id": "ordli_01JX0BMYF7T4TJQVWMY09XXX4E", "version": 1, "metadata": null, "order_id": "order_01JX0BMYF64VEDA5SNVFMRMJZ0", "quantity": 1, "created_at": "2025-06-05T15:34:12.199Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:34:12.199Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa Shorts", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png", "created_at": "2025-06-05T15:34:12.199Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBCKBA88QYWXF0H0GB", "unit_price": 10, "updated_at": "2025-06-05T15:34:12.199Z", "variant_id": "variant_01JX0A3KVH7ARR9DHT8NDTPMT9", "variant_sku": "SHORTS-M", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa Shorts", "variant_title": "M", "product_handle": "shorts", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:34:12.199Z", "deleted_at": null, "display_id": 3, "updated_at": "2025-06-05T15:34:12.199Z", "canceled_at": null, "customer_id": "cus_01JX0BMGVTV6ESWV8N1RM447WQ", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0BMGWD2N019XGT1FYCJ9V3"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0BMGWDDT87WK4CS1SVTYMC", "city": "Doloribus nemo sed d", "phone": "+1 (612) 513-8463", "company": "Sheppard Sargent Co", "metadata": null, "province": "Expedita non excepte", "address_1": "977 First Court", "address_2": "", "last_name": "Lambert", "created_at": "2025-06-05T15:33:58.285Z", "deleted_at": null, "first_name": "Garrett", "updated_at": "2025-06-05T15:33:58.285Z", "customer_id": null, "postal_code": "Debitis aut illo ali", "country_code": "de"}, "billing_address_id": "caaddr_01JX0BMGWD2N019XGT1FYCJ9V3", "shipping_address_id": "caaddr_01JX0BMGWDDT87WK4CS1SVTYMC"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0BMGWDDT87WK4CS1SVTYMC", "city": "Doloribus nemo sed d", "phone": "+1 (612) 513-8463", "company": "Sheppard Sargent Co", "metadata": null, "province": "Expedita non excepte", "address_1": "977 First Court", "address_2": "", "last_name": "Lambert", "created_at": "2025-06-05T15:33:58.285Z", "deleted_at": null, "first_name": "Garrett", "updated_at": "2025-06-05T15:33:58.285Z", "customer_id": null, "postal_code": "Debitis aut illo ali", "country_code": "de"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:34:12.37+00', '2025-06-05 15:34:13.514+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0BYZXKV0FBQB23RK7YR7ZV', 'kylofag@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0BYZRJ3C29YVE1MPM1EV3R", "email": "kylofag@mailinator.com", "items": [{"id": "ordli_01JX0BYZRJZZ05H657R5ZXXCZQ", "title": "M", "detail": {"id": "orditem_01JX0BYZRJ3S59BP015TZQJKFX", "item_id": "ordli_01JX0BYZRJZZ05H657R5ZXXCZQ", "version": 1, "metadata": null, "order_id": "order_01JX0BYZRJ3C29YVE1MPM1EV3R", "quantity": 1, "created_at": "2025-06-05T15:39:41.203Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:39:41.203Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa Sweatpants", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png", "created_at": "2025-06-05T15:39:41.203Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBM4X6WG5DFT37ATSS", "unit_price": 10, "updated_at": "2025-06-05T15:39:41.203Z", "variant_id": "variant_01JX0A3KVHKW2CD8JH2ZVT3AM5", "variant_sku": "SWEATPANTS-M", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa Sweatpants", "variant_title": "M", "product_handle": "sweatpants", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:39:41.202Z", "deleted_at": null, "display_id": 4, "updated_at": "2025-06-05T15:39:41.202Z", "canceled_at": null, "customer_id": "cus_01JX0BYN2A1X51DSKJJPMPEY7R", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0BYN2WVXC6YEQJFS7VBST8"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ", "city": "Est quidem nemo sap", "phone": "+1 (588) 782-8046", "company": "Medina and Owen Trading", "metadata": null, "province": "Tempore quia tenetu", "address_1": "67 Clarendon Avenue", "address_2": "", "last_name": "Marshall", "created_at": "2025-06-05T15:39:30.269Z", "deleted_at": null, "first_name": "Simone", "updated_at": "2025-06-05T15:39:30.269Z", "customer_id": null, "postal_code": "Delectus mollitia p", "country_code": "de"}, "billing_address_id": "caaddr_01JX0BYN2WVXC6YEQJFS7VBST8", "shipping_address_id": "caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ", "city": "Est quidem nemo sap", "phone": "+1 (588) 782-8046", "company": "Medina and Owen Trading", "metadata": null, "province": "Tempore quia tenetu", "address_1": "67 Clarendon Avenue", "address_2": "", "last_name": "Marshall", "created_at": "2025-06-05T15:39:30.269Z", "deleted_at": null, "first_name": "Simone", "updated_at": "2025-06-05T15:39:30.269Z", "customer_id": null, "postal_code": "Delectus mollitia p", "country_code": "de"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:39:41.363+00', '2025-06-05 15:39:43.44+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0C64653XQRGR2A5CW5AS9H', 'lyvi@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0C6419TH2M4AE43X5YVBN9", "email": "lyvi@mailinator.com", "items": [{"id": "ordli_01JX0C6419FRKE9RN75M5HXGCD", "title": "M / Black", "detail": {"id": "orditem_01JX0C6419PF4XT9WETBA0ZPN1", "item_id": "ordli_01JX0C6419FRKE9RN75M5HXGCD", "version": 1, "metadata": null, "order_id": "order_01JX0C6419TH2M4AE43X5YVBN9", "quantity": 1, "created_at": "2025-06-05T15:43:34.953Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:43:34.953Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T15:43:34.953Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T15:43:34.953Z", "variant_id": "variant_01JX0A3KVGKKYV12CNVG9JEQ3E", "variant_sku": "SHIRT-M-BLACK", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "M / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:43:34.953Z", "deleted_at": null, "display_id": 5, "updated_at": "2025-06-05T15:43:34.953Z", "canceled_at": null, "customer_id": "cus_01JX0C5K64C957CAWJC7QEHYZ4", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0C5K6TFYNQXBB18KTNSSY6", "city": "Ut quia odit reprehe", "phone": "+1 (727) 623-5549", "company": "Beck Wallace Traders", "metadata": null, "province": "Mollit deserunt ex s", "address_1": "754 East Milton Lane", "address_2": "", "last_name": "Ferrell", "created_at": "2025-06-05T15:43:17.722Z", "deleted_at": null, "first_name": "Xavier", "updated_at": "2025-06-05T15:43:17.722Z", "customer_id": null, "postal_code": "Eum quia enim qui qu", "country_code": "de"}, "billing_address_id": "caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD", "shipping_address_id": "caaddr_01JX0C5K6TFYNQXBB18KTNSSY6"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0C5K6TFYNQXBB18KTNSSY6", "city": "Ut quia odit reprehe", "phone": "+1 (727) 623-5549", "company": "Beck Wallace Traders", "metadata": null, "province": "Mollit deserunt ex s", "address_1": "754 East Milton Lane", "address_2": "", "last_name": "Ferrell", "created_at": "2025-06-05T15:43:17.722Z", "deleted_at": null, "first_name": "Xavier", "updated_at": "2025-06-05T15:43:17.722Z", "customer_id": null, "postal_code": "Eum quia enim qui qu", "country_code": "de"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:43:35.109+00', '2025-06-05 15:43:36.504+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0CJYZXNCNS4WV3D0FHYY7T', 'nokycah@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0CJYT4V3N32PHY9ATHY5TS", "email": "nokycah@mailinator.com", "items": [{"id": "ordli_01JX0CJYT462S762WQ2B78HWJM", "title": "M / Black", "detail": {"id": "orditem_01JX0CJYT486MTJDDQTKZNQHSK", "item_id": "ordli_01JX0CJYT462S762WQ2B78HWJM", "version": 1, "metadata": null, "order_id": "order_01JX0CJYT4V3N32PHY9ATHY5TS", "quantity": 2, "created_at": "2025-06-05T15:50:35.589Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:50:35.589Z", "raw_quantity": {"value": "2", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 2, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T15:50:35.589Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T15:50:35.589Z", "variant_id": "variant_01JX0A3KVGKKYV12CNVG9JEQ3E", "variant_sku": "SHIRT-M-BLACK", "product_type": null, "raw_quantity": {"value": "2", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "M / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}, {"id": "ordli_01JX0CJYT4VQGQ67W28WHM56GG", "title": "L / Black", "detail": {"id": "orditem_01JX0CJYT46WAFA55QGCES8CYQ", "item_id": "ordli_01JX0CJYT4VQGQ67W28WHM56GG", "version": 1, "metadata": null, "order_id": "order_01JX0CJYT4V3N32PHY9ATHY5TS", "quantity": 2, "created_at": "2025-06-05T15:50:35.589Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T15:50:35.589Z", "raw_quantity": {"value": "2", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 2, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T15:50:35.589Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T15:50:35.589Z", "variant_id": "variant_01JX0A3KVGHX1K8469E7SEG4TC", "variant_sku": "SHIRT-L-BLACK", "product_type": null, "raw_quantity": {"value": "2", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "L / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 50, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 50, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 50, "original_order_total": 50, "raw_accounting_total": {"value": "50", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "50", "precision": 20}, "raw_current_order_total": {"value": "50", "precision": 20}, "raw_original_order_total": {"value": "50", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T15:50:35.589Z", "deleted_at": null, "display_id": 6, "updated_at": "2025-06-05T15:50:35.589Z", "canceled_at": null, "customer_id": "cus_01JX0CHE71X2Z7CTF3R4XPYGGJ", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0CHE7Q603XDG6XDNHV5JT8"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5", "city": "Sequi quia id quia ", "phone": "+1 (208) 909-3727", "company": "Love Mathis Traders", "metadata": null, "province": "gh", "address_1": "55 Oak Road", "address_2": "", "last_name": "Marks", "created_at": "2025-06-05T15:49:45.848Z", "deleted_at": null, "first_name": "Tyler", "updated_at": "2025-06-05T15:49:45.848Z", "customer_id": null, "postal_code": "Deserunt ea quisquam", "country_code": "gb"}, "billing_address_id": "caaddr_01JX0CHE7Q603XDG6XDNHV5JT8", "shipping_address_id": "caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5", "city": "Sequi quia id quia ", "phone": "+1 (208) 909-3727", "company": "Love Mathis Traders", "metadata": null, "province": "gh", "address_1": "55 Oak Road", "address_2": "", "last_name": "Marks", "created_at": "2025-06-05T15:49:45.848Z", "deleted_at": null, "first_name": "Tyler", "updated_at": "2025-06-05T15:49:45.848Z", "customer_id": null, "postal_code": "Deserunt ea quisquam", "country_code": "gb"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 15:50:35.773+00', '2025-06-05 15:50:37.133+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0DPJ6Q7A52T1NTC3M0CH7S', 'fazipuqar@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0DPJ0MYS4ARHNDGG7AGXXX", "email": "fazipuqar@mailinator.com", "items": [{"id": "ordli_01JX0DPJ0N9WW0SYSK6FSZRWDY", "title": "M / Black", "detail": {"id": "orditem_01JX0DPJ0PKTYYSGBB4H2N0Q7H", "item_id": "ordli_01JX0DPJ0N9WW0SYSK6FSZRWDY", "version": 1, "metadata": null, "order_id": "order_01JX0DPJ0MYS4ARHNDGG7AGXXX", "quantity": 1, "created_at": "2025-06-05T16:10:02.135Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T16:10:02.135Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T16:10:02.135Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T16:10:02.135Z", "variant_id": "variant_01JX0A3KVGKKYV12CNVG9JEQ3E", "variant_sku": "SHIRT-M-BLACK", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "M / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T16:10:02.135Z", "deleted_at": null, "display_id": 7, "updated_at": "2025-06-05T16:10:02.135Z", "canceled_at": null, "customer_id": "cus_01JX0DP6N0PZEW0V8Q678JD3JE", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0DP6NG51E2A0QW64QATTVM"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H", "city": "Laborum Sit volupt", "phone": "+1 (487) 726-5125", "company": "Holloway Simon Traders", "metadata": null, "province": "Est et nulla cupida", "address_1": "67 Green Fabien Parkway", "address_2": "", "last_name": "Cleveland", "created_at": "2025-06-05T16:09:50.513Z", "deleted_at": null, "first_name": "Ursula", "updated_at": "2025-06-05T16:09:50.513Z", "customer_id": null, "postal_code": "Corporis autem enim ", "country_code": "fr"}, "billing_address_id": "caaddr_01JX0DP6NG51E2A0QW64QATTVM", "shipping_address_id": "caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H", "city": "Laborum Sit volupt", "phone": "+1 (487) 726-5125", "company": "Holloway Simon Traders", "metadata": null, "province": "Est et nulla cupida", "address_1": "67 Green Fabien Parkway", "address_2": "", "last_name": "Cleveland", "created_at": "2025-06-05T16:09:50.513Z", "deleted_at": null, "first_name": "Ursula", "updated_at": "2025-06-05T16:09:50.513Z", "customer_id": null, "postal_code": "Corporis autem enim ", "country_code": "fr"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 16:10:02.328+00', '2025-06-05 16:10:03.783+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0VR8VP4XSC4Z8G9JAQA0PD', 'vywyriqu@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0VR8HG0QG27GD6E193TG7T", "email": "vywyriqu@mailinator.com", "items": [{"id": "ordli_01JX0VR8HG4SNF471MGP24WN95", "title": "S / Black", "detail": {"id": "orditem_01JX0VR8HH49P8KG71M3WT40YB", "item_id": "ordli_01JX0VR8HG4SNF471MGP24WN95", "version": 1, "metadata": null, "order_id": "order_01JX0VR8HG0QG27GD6E193TG7T", "quantity": 1, "created_at": "2025-06-05T20:15:38.035Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T20:15:38.035Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T20:15:38.035Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T20:15:38.035Z", "variant_id": "variant_01JX0A3KVFMZNNXCB3DRS1RF67", "variant_sku": "SHIRT-S-BLACK", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "S / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T20:15:38.034Z", "deleted_at": null, "display_id": 8, "updated_at": "2025-06-05T20:15:38.034Z", "canceled_at": null, "customer_id": "cus_01JX0VQA5T01GBRVPP8P9SH21Q", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0VQA69YVCW79X29RR1FBSE", "city": "Est dolores ratione", "phone": "+1 (749) 431-5074", "company": "Griffith and Phelps Inc", "metadata": null, "province": "Eum sed quos tempora", "address_1": "821 Milton Street", "address_2": "", "last_name": "Monroe", "created_at": "2025-06-05T20:15:06.954Z", "deleted_at": null, "first_name": "Kelsey", "updated_at": "2025-06-05T20:15:06.954Z", "customer_id": null, "postal_code": "Ut reiciendis laboru", "country_code": "it"}, "billing_address_id": "caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4", "shipping_address_id": "caaddr_01JX0VQA69YVCW79X29RR1FBSE"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0VQA69YVCW79X29RR1FBSE", "city": "Est dolores ratione", "phone": "+1 (749) 431-5074", "company": "Griffith and Phelps Inc", "metadata": null, "province": "Eum sed quos tempora", "address_1": "821 Milton Street", "address_2": "", "last_name": "Monroe", "created_at": "2025-06-05T20:15:06.954Z", "deleted_at": null, "first_name": "Kelsey", "updated_at": "2025-06-05T20:15:06.954Z", "customer_id": null, "postal_code": "Ut reiciendis laboru", "country_code": "it"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 20:15:38.358+00', '2025-06-05 20:15:39.41+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX0WSYSEDEH02NS359CXRQDA', 'zasobaka@mailinator.com', 'email', 'order-placed', '{"order": {"id": "order_01JX0WSYM5TFSXBRD93D3H8279", "email": "zasobaka@mailinator.com", "items": [{"id": "ordli_01JX0WSYM50NC20EPZXB2ZQ0W7", "title": "S / Black", "detail": {"id": "orditem_01JX0WSYM55KD6AMZFN7RH0K4F", "item_id": "ordli_01JX0WSYM50NC20EPZXB2ZQ0W7", "version": 1, "metadata": null, "order_id": "order_01JX0WSYM5TFSXBRD93D3H8279", "quantity": 1, "created_at": "2025-06-05T20:34:01.990Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-05T20:34:01.990Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa T-Shirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png", "created_at": "2025-06-05T20:34:01.990Z", "deleted_at": null, "product_id": "prod_01JX0A3KSADE2CYBNBHAZX75ZF", "unit_price": 10, "updated_at": "2025-06-05T20:34:01.990Z", "variant_id": "variant_01JX0A3KVFMZNNXCB3DRS1RF67", "variant_sku": "SHIRT-S-BLACK", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa T-Shirt", "variant_title": "S / Black", "product_handle": "t-shirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-05T20:34:01.990Z", "deleted_at": null, "display_id": 9, "updated_at": "2025-06-05T20:34:01.990Z", "canceled_at": null, "customer_id": "cus_01JX0WSJRGZ6FHBT9ZH8G3MWJE", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX0WSJS6G0AX0EX955HY3FTN"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G", "city": "In quae aut molestia", "phone": "+1 (109) 206-1761", "company": "Kelly Mcfadden LLC", "metadata": null, "province": "Laborum Consectetur", "address_1": "14 Cowley Extension", "address_2": "", "last_name": "Chang", "created_at": "2025-06-05T20:33:49.863Z", "deleted_at": null, "first_name": "Alfreda", "updated_at": "2025-06-05T20:33:49.863Z", "customer_id": null, "postal_code": "Beatae esse enim ap", "country_code": "es"}, "billing_address_id": "caaddr_01JX0WSJS6G0AX0EX955HY3FTN", "shipping_address_id": "caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G", "city": "In quae aut molestia", "phone": "+1 (109) 206-1761", "company": "Kelly Mcfadden LLC", "metadata": null, "province": "Laborum Consectetur", "address_1": "14 Cowley Extension", "address_2": "", "last_name": "Chang", "created_at": "2025-06-05T20:33:49.863Z", "deleted_at": null, "first_name": "Alfreda", "updated_at": "2025-06-05T20:33:49.863Z", "customer_id": null, "postal_code": "Beatae esse enim ap", "country_code": "es"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-05 20:34:02.159+00', '2025-06-05 20:34:03.19+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX54W2HJ256VH259WSJH491A', 'john.steven.ur@gmail.com', 'email', 'order-placed', '{"order": {"id": "order_01JX54W2BPDJF1SWY96S375PX7", "email": "john.steven.ur@gmail.com", "items": [{"id": "ordli_01JX54W2BP7ZNTJEWY056EWHSE", "title": "M", "detail": {"id": "orditem_01JX54W2BQ84W90DN8P72SZ1NF", "item_id": "ordli_01JX54W2BP7ZNTJEWY056EWHSE", "version": 1, "metadata": null, "order_id": "order_01JX54W2BPDJF1SWY96S375PX7", "quantity": 1, "created_at": "2025-06-07T12:11:57.687Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-07T12:11:57.687Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa Sweatshirt", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png", "created_at": "2025-06-07T12:11:57.687Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBNHJQBXZMED5D3PA8", "unit_price": 10, "updated_at": "2025-06-07T12:11:57.687Z", "variant_id": "variant_01JX0A3KVGMTFCZS7JXZRSZVX5", "variant_sku": "SWEATSHIRT-M", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa Sweatshirt", "variant_title": "M", "product_handle": "sweatshirt", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-07T12:11:57.687Z", "deleted_at": null, "display_id": 10, "updated_at": "2025-06-07T12:11:57.687Z", "canceled_at": null, "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-07T12:11:46.793Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-07T12:11:46.793Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}, "billing_address_id": "caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK", "shipping_address_id": "caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-07T12:11:46.793Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-07T12:11:46.793Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-07 12:11:57.875+00', '2025-06-07 12:11:58.919+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JX54XWDX3CWEAJW4AGWDB2ER', 'john.steven.ur@gmail.com', 'email', 'order-placed', '{"order": {"id": "order_01JX54XW87YAS12QR99CVP1PJS", "email": "john.steven.ur@gmail.com", "items": [{"id": "ordli_01JX54XW88TF282M1VPNPXGRF2", "title": "M", "detail": {"id": "orditem_01JX54XW8868PRBF1N6APKJBH4", "item_id": "ordli_01JX54XW88TF282M1VPNPXGRF2", "version": 1, "metadata": null, "order_id": "order_01JX54XW87YAS12QR99CVP1PJS", "quantity": 1, "created_at": "2025-06-07T12:12:56.968Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-07T12:12:56.968Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "Medusa Shorts", "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png", "created_at": "2025-06-07T12:12:56.968Z", "deleted_at": null, "product_id": "prod_01JX0A3KSBCKBA88QYWXF0H0GB", "unit_price": 10, "updated_at": "2025-06-07T12:12:56.968Z", "variant_id": "variant_01JX0A3KVH7ARR9DHT8NDTPMT9", "variant_sku": "SHORTS-M", "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Medusa Shorts", "variant_title": "M", "product_handle": "shorts", "raw_unit_price": {"value": "10", "precision": 20}, "is_custom_price": false, "is_discountable": true, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": null, "requires_shipping": true, "product_collection": null, "product_description": "Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-07T12:12:56.968Z", "deleted_at": null, "display_id": 11, "updated_at": "2025-06-07T12:12:56.968Z", "canceled_at": null, "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "currency_code": "eur", "is_draft_order": false, "billing_address": {"id": "caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JX54XHXVNE82NNPGCK307H5K", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-07T12:12:46.395Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-07T12:12:46.395Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}, "billing_address_id": "caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9", "shipping_address_id": "caaddr_01JX54XHXVNE82NNPGCK307H5K"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JX54XHXVNE82NNPGCK307H5K", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-07T12:12:46.395Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-07T12:12:46.395Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-07 12:12:57.149+00', '2025-06-07 12:12:58.144+00', NULL, 'failure');
INSERT INTO public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status) VALUES ('noti_01JYKHABA7NB800YKREZVWAF1F', 'john.steven.ur@gmail.com', 'email', 'order-placed', '{"order": {"id": "order_01JYKHAAS9JG6ZXZJG0D6RZFMS", "email": "john.steven.ur@gmail.com", "items": [{"id": "ordli_01JYKHAASBXAFGSWGGMDNSAVZM", "title": "Orange", "detail": {"id": "orditem_01JYKHAASCZ0VKDS3VACJPAEXG", "item_id": "ordli_01JYKHAASBXAFGSWGGMDNSAVZM", "version": 1, "metadata": null, "order_id": "order_01JYKHAAS9JG6ZXZJG0D6RZFMS", "quantity": 1, "created_at": "2025-06-25T12:34:31.859Z", "deleted_at": null, "unit_price": null, "updated_at": "2025-06-25T12:34:31.859Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "David Bryant Tumbler", "thumbnail": null, "created_at": "2025-06-25T12:34:31.858Z", "deleted_at": null, "product_id": "prod_01JY9EAQNMHAJ5TWA5H6J0GNYR", "unit_price": 30, "updated_at": "2025-06-25T12:34:31.858Z", "variant_id": "variant_01JY9RQT7QFV055A1ERPEKTEC0", "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "David Bryant Tumbler", "variant_title": "Orange", "product_handle": "david-bryant-tumbler", "raw_unit_price": {"value": "30", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "20oz | Double Wall Stainless Steel Tumbler", "requires_shipping": true, "product_collection": "David Bryant collection", "product_description": "Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 40, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "40", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01JX0A3KHK3G9B2MYCSDS7C74Y", "created_at": "2025-06-25T12:34:31.856Z", "deleted_at": null, "display_id": 12, "updated_at": "2025-06-25T12:34:31.856Z", "canceled_at": null, "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "currency_code": "usd", "is_draft_order": false, "billing_address": {"id": "caaddr_01JYKH8DSK07JGXKJRM21DXEBG"}, "no_notification": false, "sales_channel_id": "sc_01JWY3551WCZ916A1WRN64Z1CQ", "shipping_address": {"id": "caaddr_01JYKH8DSKBMKQHYW86ETZHYKP", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-25T12:33:29.396Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-25T12:33:29.396Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}, "billing_address_id": "caaddr_01JYKH8DSK07JGXKJRM21DXEBG", "shipping_address_id": "caaddr_01JYKH8DSKBMKQHYW86ETZHYKP"}, "preview": "Thank you for your order!", "emailOptions": {"replyTo": "info@example.com", "subject": "Your order has been placed"}, "shippingAddress": {"id": "caaddr_01JYKH8DSKBMKQHYW86ETZHYKP", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "", "last_name": "Steven", "created_at": "2025-06-25T12:33:29.396Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-25T12:33:29.396Z", "customer_id": null, "postal_code": "33", "country_code": "gb"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sendgrid', '2025-06-25 12:34:32.392+00', '2025-06-25 12:34:37.49+00', NULL, 'failure');


--
-- Data for Name: notification_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.notification_provider (id, handle, name, is_enabled, channels, created_at, updated_at, deleted_at) VALUES ('sendgrid', 'sendgrid', 'sendgrid', 't', '{email}', '2025-06-04 18:27:13.94+00', '2025-06-04 18:27:13.94+00', NULL);


--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0BAYF17QN2XFYTETW5NB2V', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '1', 'cus_01JX0BA7R51QEG2XSYVG8K2YER', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'bezyfij@mailinator.com', 'eur', 'caaddr_01JX0BA7RWEZHYQY7N49CB8605', 'caaddr_01JX0BA7RWRRP49WX9K1VX1ETA', 'f', NULL, '2025-06-05 15:28:44.516+00', '2025-06-05 15:28:44.516+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0BHJ9JK8Y2XEQ608FRBBGH', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '2', 'cus_01JX0BH6MWTYTRDNA1T5SDHXM6', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'fegyl@mailinator.com', 'eur', 'caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG', 'caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F', 'f', NULL, '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0BMYF64VEDA5SNVFMRMJZ0', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '3', 'cus_01JX0BMGVTV6ESWV8N1RM447WQ', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'gycyl@mailinator.com', 'eur', 'caaddr_01JX0BMGWDDT87WK4CS1SVTYMC', 'caaddr_01JX0BMGWD2N019XGT1FYCJ9V3', 'f', NULL, '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0BYZRJ3C29YVE1MPM1EV3R', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '4', 'cus_01JX0BYN2A1X51DSKJJPMPEY7R', '4', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'kylofag@mailinator.com', 'eur', 'caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ', 'caaddr_01JX0BYN2WVXC6YEQJFS7VBST8', 'f', NULL, '2025-06-05 15:39:41.202+00', '2025-06-05 15:41:11.701+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0C6419TH2M4AE43X5YVBN9', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '5', 'cus_01JX0C5K64C957CAWJC7QEHYZ4', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'lyvi@mailinator.com', 'eur', 'caaddr_01JX0C5K6TFYNQXBB18KTNSSY6', 'caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD', 'f', NULL, '2025-06-05 15:43:34.953+00', '2025-06-05 15:43:34.953+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0CJYT4V3N32PHY9ATHY5TS', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '6', 'cus_01JX0CHE71X2Z7CTF3R4XPYGGJ', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'nokycah@mailinator.com', 'eur', 'caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5', 'caaddr_01JX0CHE7Q603XDG6XDNHV5JT8', 'f', NULL, '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0DPJ0MYS4ARHNDGG7AGXXX', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '7', 'cus_01JX0DP6N0PZEW0V8Q678JD3JE', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'fazipuqar@mailinator.com', 'eur', 'caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H', 'caaddr_01JX0DP6NG51E2A0QW64QATTVM', 'f', NULL, '2025-06-05 16:10:02.135+00', '2025-06-05 16:10:02.135+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0VR8HG0QG27GD6E193TG7T', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '8', 'cus_01JX0VQA5T01GBRVPP8P9SH21Q', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'vywyriqu@mailinator.com', 'eur', 'caaddr_01JX0VQA69YVCW79X29RR1FBSE', 'caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4', 'f', NULL, '2025-06-05 20:15:38.034+00', '2025-06-05 20:15:38.034+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX0WSYM5TFSXBRD93D3H8279', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '9', 'cus_01JX0WSJRGZ6FHBT9ZH8G3MWJE', '1', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'zasobaka@mailinator.com', 'eur', 'caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G', 'caaddr_01JX0WSJS6G0AX0EX955HY3FTN', 'f', NULL, '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL, NULL);
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX54XW87YAS12QR99CVP1PJS', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '11', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', '2', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'canceled', 'f', 'john.steven.ur@gmail.com', 'eur', 'caaddr_01JX54XHXVNE82NNPGCK307H5K', 'caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9', 'f', NULL, '2025-06-07 12:12:56.968+00', '2025-06-25 13:01:20.477+00', NULL, '2025-06-25 13:01:20.471+00');
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JX54W2BPDJF1SWY96S375PX7', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '10', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', '2', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'canceled', 'f', 'john.steven.ur@gmail.com', 'eur', 'caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY', 'caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK', 'f', NULL, '2025-06-07 12:11:57.687+00', '2025-06-25 13:02:06.846+00', NULL, '2025-06-25 13:02:06.841+00');
INSERT INTO public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at) VALUES ('order_01JYKHAAS9JG6ZXZJG0D6RZFMS', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '12', 'cus_01JX0X0BEBRAQ5T528K9B9K4G5', '4', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pending', 'f', 'john.steven.ur@gmail.com', 'usd', 'caaddr_01JYKH8DSKBMKQHYW86ETZHYKP', 'caaddr_01JYKH8DSK07JGXKJRM21DXEBG', 'f', NULL, '2025-06-25 12:34:31.856+00', '2025-06-29 17:55:19.561+00', NULL, NULL);


--
-- Data for Name: order_address; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BA7RWRRP49WX9K1VX1ETA', NULL, 'Cox Johns Trading', 'Quintessa', 'Santana', '86 North First Drive', NULL, 'Minus sint vel place', 'de', 'Aliquid nostrum porr', 'Mollitia est exercit', '+1 (939) 727-1268', NULL, '2025-06-05 15:28:21.276+00', '2025-06-05 15:28:21.276+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BA7RWEZHYQY7N49CB8605', NULL, 'Cox Johns Trading', 'Quintessa', 'Santana', '86 North First Drive', NULL, 'Minus sint vel place', 'de', 'Aliquid nostrum porr', 'Mollitia est exercit', '+1 (939) 727-1268', NULL, '2025-06-05 15:28:21.277+00', '2025-06-05 15:28:21.277+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BH6ND2BHRK9GDRTWWPZ4F', NULL, 'Mack Mcgowan LLC', 'Hammett', 'Acosta', '725 Hague Street', NULL, 'Fugit voluptas nihi', 'de', 'Reprehenderit perfer', 'Et consequatur qui', '+1 (363) 532-4881', NULL, '2025-06-05 15:32:09.517+00', '2025-06-05 15:32:09.517+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BH6ND8XXMKGCCQ3G7K8BG', NULL, 'Mack Mcgowan LLC', 'Hammett', 'Acosta', '725 Hague Street', NULL, 'Fugit voluptas nihi', 'de', 'Reprehenderit perfer', 'Et consequatur qui', '+1 (363) 532-4881', NULL, '2025-06-05 15:32:09.517+00', '2025-06-05 15:32:09.517+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BMGWD2N019XGT1FYCJ9V3', NULL, 'Sheppard Sargent Co', 'Garrett', 'Lambert', '977 First Court', NULL, 'Doloribus nemo sed d', 'de', 'Expedita non excepte', 'Debitis aut illo ali', '+1 (612) 513-8463', NULL, '2025-06-05 15:33:58.285+00', '2025-06-05 15:33:58.285+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BMGWDDT87WK4CS1SVTYMC', NULL, 'Sheppard Sargent Co', 'Garrett', 'Lambert', '977 First Court', NULL, 'Doloribus nemo sed d', 'de', 'Expedita non excepte', 'Debitis aut illo ali', '+1 (612) 513-8463', NULL, '2025-06-05 15:33:58.285+00', '2025-06-05 15:33:58.285+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BYN2WVXC6YEQJFS7VBST8', NULL, 'Medina and Owen Trading', 'Simone', 'Marshall', '67 Clarendon Avenue', NULL, 'Est quidem nemo sap', 'de', 'Tempore quia tenetu', 'Delectus mollitia p', '+1 (588) 782-8046', NULL, '2025-06-05 15:39:30.269+00', '2025-06-05 15:39:30.269+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0BYN2XQE7VEFKF2E35DVDJ', NULL, 'Medina and Owen Trading', 'Simone', 'Marshall', '67 Clarendon Avenue', NULL, 'Est quidem nemo sap', 'de', 'Tempore quia tenetu', 'Delectus mollitia p', '+1 (588) 782-8046', NULL, '2025-06-05 15:39:30.269+00', '2025-06-05 15:39:30.269+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0C5K6T8Q8ESQ6NEWRD3HYD', NULL, 'Beck Wallace Traders', 'Xavier', 'Ferrell', '754 East Milton Lane', NULL, 'Ut quia odit reprehe', 'de', 'Mollit deserunt ex s', 'Eum quia enim qui qu', '+1 (727) 623-5549', NULL, '2025-06-05 15:43:17.722+00', '2025-06-05 15:43:17.722+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0C5K6TFYNQXBB18KTNSSY6', NULL, 'Beck Wallace Traders', 'Xavier', 'Ferrell', '754 East Milton Lane', NULL, 'Ut quia odit reprehe', 'de', 'Mollit deserunt ex s', 'Eum quia enim qui qu', '+1 (727) 623-5549', NULL, '2025-06-05 15:43:17.722+00', '2025-06-05 15:43:17.722+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0CHE7Q603XDG6XDNHV5JT8', NULL, 'Love Mathis Traders', 'Tyler', 'Marks', '55 Oak Road', NULL, 'Sequi quia id quia', 'gb', 'gh', 'Deserunt ea quisquam', '+1 (208) 909-3727', NULL, '2025-06-05 15:49:45.848+00', '2025-06-05 15:49:45.848+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0CHE7RE21N7ZXW2DEQ16V5', NULL, 'Love Mathis Traders', 'Tyler', 'Marks', '55 Oak Road', NULL, 'Sequi quia id quia', 'gb', 'gh', 'Deserunt ea quisquam', '+1 (208) 909-3727', NULL, '2025-06-05 15:49:45.848+00', '2025-06-05 15:49:45.848+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0DP6NG51E2A0QW64QATTVM', NULL, 'Holloway Simon Traders', 'Ursula', 'Cleveland', '67 Green Fabien Parkway', NULL, 'Laborum Sit volupt', 'fr', 'Est et nulla cupida', 'Corporis autem enim', '+1 (487) 726-5125', NULL, '2025-06-05 16:09:50.513+00', '2025-06-05 16:09:50.513+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0DP6NHMK5W7X3C3K0KJ60H', NULL, 'Holloway Simon Traders', 'Ursula', 'Cleveland', '67 Green Fabien Parkway', NULL, 'Laborum Sit volupt', 'fr', 'Est et nulla cupida', 'Corporis autem enim', '+1 (487) 726-5125', NULL, '2025-06-05 16:09:50.513+00', '2025-06-05 16:09:50.513+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0VQA69H7FDXZV6NF9BHXZ4', NULL, 'Griffith and Phelps Inc', 'Kelsey', 'Monroe', '821 Milton Street', NULL, 'Est dolores ratione', 'it', 'Eum sed quos tempora', 'Ut reiciendis laboru', '+1 (749) 431-5074', NULL, '2025-06-05 20:15:06.954+00', '2025-06-05 20:15:06.954+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0VQA69YVCW79X29RR1FBSE', NULL, 'Griffith and Phelps Inc', 'Kelsey', 'Monroe', '821 Milton Street', NULL, 'Est dolores ratione', 'it', 'Eum sed quos tempora', 'Ut reiciendis laboru', '+1 (749) 431-5074', NULL, '2025-06-05 20:15:06.954+00', '2025-06-05 20:15:06.954+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0WSJS6G0AX0EX955HY3FTN', NULL, 'Garrett and Allen Traders', 'Yuli', 'West', '14 West Green Oak Court', NULL, 'Aliquid beatae a vol', 'se', 'Voluptatem aperiam n', 'Deserunt aut aliqua', '+1 (651) 351-7621', NULL, '2025-06-05 20:33:49.863+00', '2025-06-05 20:33:49.863+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX0WSJS6XDJ1AK6KK3F7VG8G', NULL, 'Kelly Mcfadden LLC', 'Alfreda', 'Chang', '14 Cowley Extension', NULL, 'In quae aut molestia', 'es', 'Laborum Consectetur', 'Beatae esse enim ap', '+1 (109) 206-1761', NULL, '2025-06-05 20:33:49.863+00', '2025-06-05 20:33:49.863+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54VQQ9CVZ2SSDWY9NA5FRK', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:11:46.793+00', '2025-06-07 12:11:46.793+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54VQQ9EF7NDF3Z0XRCGQVY', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:11:46.793+00', '2025-06-07 12:11:46.793+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54XHXTDJPKN6MNFFHGBYZ9', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:12:46.395+00', '2025-06-07 12:12:46.395+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JX54XHXVNE82NNPGCK307H5K', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-07 12:12:46.395+00', '2025-06-07 12:12:46.395+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYKH8DSK07JGXKJRM21DXEBG', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-25 12:33:29.396+00', '2025-06-25 12:33:29.396+00', NULL);
INSERT INTO public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) VALUES ('caaddr_01JYKH8DSKBMKQHYW86ETZHYKP', NULL, 'Stevnio', 'John', 'Steven', 'Saint Johns Ave', NULL, 'Accra', 'gb', 'Accra', '33', '0592330177', NULL, '2025-06-25 12:33:29.396+00', '2025-06-25 12:33:29.396+00', NULL);


--
-- Data for Name: order_cart; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BAYF17QN2XFYTETW5NB2V', 'cart_01JX0B6YTFFR39VAPEAPE9QYSY', 'ordercart_01JX0BAYGV95DT003XA9G7M8FZ', '2025-06-05 15:28:44.567261+00', '2025-06-05 15:28:44.567261+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BHJ9JK8Y2XEQ608FRBBGH', 'cart_01JX0BFDATRTYPVFEMHJX0HMW5', 'ordercart_01JX0BHJAWX2XVR52Q478M1MG0', '2025-06-05 15:32:21.465216+00', '2025-06-05 15:32:21.465216+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BMYF64VEDA5SNVFMRMJZ0', 'cart_01JX0BKW89NR37TPZM3XGQK1FQ', 'ordercart_01JX0BMYGJJ0ZR7Q3TGWRJN29F', '2025-06-05 15:34:12.23764+00', '2025-06-05 15:34:12.23764+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BYZRJ3C29YVE1MPM1EV3R', 'cart_01JX0BSN0FGKT2PH3ET7YCTAD7', 'ordercart_01JX0BYZSXB5B90AQ2JV95PTGB', '2025-06-05 15:39:41.240964+00', '2025-06-05 15:39:41.240964+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0C6419TH2M4AE43X5YVBN9', 'cart_01JX0C52XJ6GXG5S483MBPVRAJ', 'ordercart_01JX0C642J26QCCSKE7JWPJ0ZE', '2025-06-05 15:43:34.990978+00', '2025-06-05 15:43:34.990978+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0CJYT4V3N32PHY9ATHY5TS', 'cart_01JX0CBYVDXX2EPTVVY2AFGCSK', 'ordercart_01JX0CJYVTJWZHCFPE3916Y1X4', '2025-06-05 15:50:35.636443+00', '2025-06-05 15:50:35.636443+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0DPJ0MYS4ARHNDGG7AGXXX', 'cart_01JX0DKDYRSVD8ZRM8587CZEJC', 'ordercart_01JX0DPJ2G9HJXXNV4S9V44RZH', '2025-06-05 16:10:02.187665+00', '2025-06-05 16:10:02.187665+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0VR8HG0QG27GD6E193TG7T', 'cart_01JX0VPHTAVGSJFEV7EN9MXAPM', 'ordercart_01JX0VR8M2HZRFKACS1T9JWJHS', '2025-06-05 20:15:38.106899+00', '2025-06-05 20:15:38.106899+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0WSYM5TFSXBRD93D3H8279', 'cart_01JX0WR0ET0M9GEBZHCXY1ZXFB', 'ordercart_01JX0WSYNZ0RY1AMZCJPE1HVQN', '2025-06-05 20:34:02.04287+00', '2025-06-05 20:34:02.04287+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX54W2BPDJF1SWY96S375PX7', 'cart_01JX0X8NRQ6S3JSVSMSYDFMGTP', 'ordercart_01JX54W2DBXM3XQJ0WRS15EP8A', '2025-06-07 12:11:57.735242+00', '2025-06-07 12:11:57.735242+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX54XW87YAS12QR99CVP1PJS', 'cart_01JX54X605DBFHVJZAKNYF6AZY', 'ordercart_01JX54XW9ZSVY8BVX6XPT59X4S', '2025-06-07 12:12:57.01703+00', '2025-06-07 12:12:57.01703+00', NULL);
INSERT INTO public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JYKHAAS9JG6ZXZJG0D6RZFMS', 'cart_01JYKH7ZZWBKNC6Y67VWCTZNWV', 'ordercart_01JYKHAAYARZ1981FBT2THFX7D', '2025-06-25 12:34:31.994995+00', '2025-06-25 12:34:31.994995+00', NULL);


--
-- Data for Name: order_change; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JX0C1FKBP8RATPAKYRQ2DJHF', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '2', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:02.968+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:02.956+00', '2025-06-05 15:41:02.972+00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JX0C1NCH9PGGCZRMF4XC9E3G', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '3', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:08.904+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:08.881+00', '2025-06-05 15:41:08.909+00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JX0C1R3FXKER4X033RS47C3S', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '4', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:11.675+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-05 15:41:11.663+00', '2025-06-05 15:41:11.68+00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JYKJVDK0RCHN9HK9F2E4AFM9', 'order_01JX54XW87YAS12QR99CVP1PJS', '2', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-25 13:01:20.387+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-25 13:01:20.352+00', '2025-06-25 13:01:20.391+00', 'credit_line', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JYKJWTVGM00R06FMPVPQZG1A', 'order_01JX54W2BPDJF1SWY96S375PX7', '2', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-25 13:02:06.734+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-25 13:02:06.704+00', '2025-06-25 13:02:06.739+00', 'credit_line', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JYYD43FCDX7DXJA0RHYYTCM3', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '2', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:52:52.22+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:52:52.205+00', '2025-06-29 17:52:52.227+00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JYYD8G8TE9XF3K6N41Y0F7VY', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '3', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:55:16.392+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:55:16.378+00', '2025-06-29 17:55:16.401+00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordch_01JYYD8KAXC0Y50NNGF3EWA6A1', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '4', NULL, 'confirmed', NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:55:19.526+00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-29 17:55:19.517+00', '2025-06-29 17:55:19.53+00', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: order_change_action; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JX0C1FKAS9P3BTGSTVN0FF63', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '2', '1', 'ordch_01JX0C1FKBP8RATPAKYRQ2DJHF', 'fulfillment', 'ful_01JX0C1FGQR5NN788CACVAMBBZ', 'FULFILL_ITEM', '{"quantity": 1, "reference_id": "ordli_01JX0BYZRJZZ05H657R5ZXXCZQ"}', NULL, NULL, NULL, 't', '2025-06-05 15:41:02.956+00', '2025-06-05 15:41:03.006+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JX0C1NCH2T5QVZETTG0Z5M0W', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '3', '2', 'ordch_01JX0C1NCH9PGGCZRMF4XC9E3G', 'fulfillment', 'ful_01JX0C1FGQR5NN788CACVAMBBZ', 'SHIP_ITEM', '{"quantity": 1, "reference_id": "ordli_01JX0BYZRJZZ05H657R5ZXXCZQ"}', NULL, NULL, NULL, 't', '2025-06-05 15:41:08.882+00', '2025-06-05 15:41:08.936+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JX0C1R3EB0A00SSZRHKCB4GK', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '4', '3', 'ordch_01JX0C1R3FXKER4X033RS47C3S', 'fulfillment', 'ful_01JX0C1FGQR5NN788CACVAMBBZ', 'DELIVER_ITEM', '{"quantity": 1, "reference_id": "ordli_01JX0BYZRJZZ05H657R5ZXXCZQ"}', NULL, NULL, NULL, 't', '2025-06-05 15:41:11.663+00', '2025-06-05 15:41:11.701+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JYKJVDKHHHXH1QM2JP60EJX9', 'order_01JX54XW87YAS12QR99CVP1PJS', '2', '4', 'ordch_01JYKJVDK0RCHN9HK9F2E4AFM9', 'payment_collection', 'pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', 'CREDIT_LINE_ADD', '{}', '20', '{"value": "20", "precision": 20}', NULL, 't', '2025-06-25 13:01:20.369+00', '2025-06-25 13:01:20.437+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JYKJWTVRWJQHJCC6YC6Z874N', 'order_01JX54W2BPDJF1SWY96S375PX7', '2', '5', 'ordch_01JYKJWTVGM00R06FMPVPQZG1A', 'payment_collection', 'pay_col_01JX54VZGQ87YRERYW8DAKH9CP', 'CREDIT_LINE_ADD', '{}', '20', '{"value": "20", "precision": 20}', NULL, 't', '2025-06-25 13:02:06.713+00', '2025-06-25 13:02:06.796+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JYYD43FBT2EG22FM54CDR06P', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '2', '6', 'ordch_01JYYD43FCDX7DXJA0RHYYTCM3', 'fulfillment', 'ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', 'FULFILL_ITEM', '{"quantity": 1, "reference_id": "ordli_01JYKHAASBXAFGSWGGMDNSAVZM"}', NULL, NULL, NULL, 't', '2025-06-29 17:52:52.205+00', '2025-06-29 17:52:52.267+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JYYD8G8T20BTZTG4T824P2SA', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '3', '7', 'ordch_01JYYD8G8TE9XF3K6N41Y0F7VY', 'fulfillment', 'ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', 'SHIP_ITEM', '{"quantity": 1, "reference_id": "ordli_01JYKHAASBXAFGSWGGMDNSAVZM"}', NULL, NULL, NULL, 't', '2025-06-29 17:55:16.378+00', '2025-06-29 17:55:16.422+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordchact_01JYYD8KAWETB411DV3H2B18YM', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '4', '8', 'ordch_01JYYD8KAXC0Y50NNGF3EWA6A1', 'fulfillment', 'ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', 'DELIVER_ITEM', '{"quantity": 1, "reference_id": "ordli_01JYKHAASBXAFGSWGGMDNSAVZM"}', NULL, NULL, NULL, 't', '2025-06-29 17:55:19.517+00', '2025-06-29 17:55:19.561+00', NULL, NULL, NULL, NULL);


--
-- Data for Name: order_claim; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_claim


--
-- Data for Name: order_claim_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_claim_item


--
-- Data for Name: order_claim_item_image; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_claim_item_image


--
-- Data for Name: order_credit_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_credit_line


--
-- Data for Name: order_exchange; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_exchange


--
-- Data for Name: order_exchange_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_exchange_item


--
-- Data for Name: order_fulfillment; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_fulfillment (order_id, fulfillment_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BYZRJ3C29YVE1MPM1EV3R', 'ful_01JX0C1FGQR5NN788CACVAMBBZ', 'ordful_01JX0C1FJWSXC75WR0THJK6G8Z', '2025-06-05 15:41:02.937909+00', '2025-06-05 15:41:02.937909+00', NULL);
INSERT INTO public.order_fulfillment (order_id, fulfillment_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JYKHAAS9JG6ZXZJG0D6RZFMS', 'ful_01JYYD43BQ5PMJ8YP6XS6CG5QS', 'ordful_01JYYD43EB2F925X1QNXZA5YCR', '2025-06-29 17:52:52.166037+00', '2025-06-29 17:52:52.166037+00', NULL);


--
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0BAYF33ZMHY9GSECQSB7MZ', 'order_01JX0BAYF17QN2XFYTETW5NB2V', '1', 'ordli_01JX0BAYF2H2KQV0P2Q5HFFS02', '2', '{"value": "2", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:28:44.516+00', '2025-06-05 15:28:44.516+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0BHJ9KTZD0KHW4PGJ2YH37', 'order_01JX0BHJ9JK8Y2XEQ608FRBBGH', '1', 'ordli_01JX0BHJ9JRXC9R1M9KERSJ8TA', '3', '{"value": "3", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0BMYF715HY0HGA06S8QEWA', 'order_01JX0BMYF64VEDA5SNVFMRMJZ0', '1', 'ordli_01JX0BMYF7T4TJQVWMY09XXX4E', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0BYZRJ3S59BP015TZQJKFX', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '1', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0C1FMPAD6YDWT2QGSHYBX7', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '2', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:41:03.006+00', '2025-06-05 15:41:03.006+00', NULL, '0', '{"value": "0", "precision": 20}', '10', '{"value": "10", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0C1NE34YVHHTCCQKF865RT', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '3', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:41:08.936+00', '2025-06-05 15:41:08.936+00', NULL, '0', '{"value": "0", "precision": 20}', '10', '{"value": "10", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0C1R4G7J380W9VXCTVJHJR', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '4', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:41:11.701+00', '2025-06-05 15:41:11.701+00', NULL, '1', '{"value": "1", "precision": 20}', '10', '{"value": "10", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0C6419PF4XT9WETBA0ZPN1', 'order_01JX0C6419TH2M4AE43X5YVBN9', '1', 'ordli_01JX0C6419FRKE9RN75M5HXGCD', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:43:34.953+00', '2025-06-05 15:43:34.953+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0CJYT486MTJDDQTKZNQHSK', 'order_01JX0CJYT4V3N32PHY9ATHY5TS', '1', 'ordli_01JX0CJYT462S762WQ2B78HWJM', '2', '{"value": "2", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0CJYT46WAFA55QGCES8CYQ', 'order_01JX0CJYT4V3N32PHY9ATHY5TS', '1', 'ordli_01JX0CJYT4VQGQ67W28WHM56GG', '2', '{"value": "2", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0DPJ0PKTYYSGBB4H2N0Q7H', 'order_01JX0DPJ0MYS4ARHNDGG7AGXXX', '1', 'ordli_01JX0DPJ0N9WW0SYSK6FSZRWDY', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 16:10:02.135+00', '2025-06-05 16:10:02.135+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0VR8HH49P8KG71M3WT40YB', 'order_01JX0VR8HG0QG27GD6E193TG7T', '1', 'ordli_01JX0VR8HG4SNF471MGP24WN95', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 20:15:38.035+00', '2025-06-05 20:15:38.035+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX0WSYM55KD6AMZFN7RH0K4F', 'order_01JX0WSYM5TFSXBRD93D3H8279', '1', 'ordli_01JX0WSYM50NC20EPZXB2ZQ0W7', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX54W2BQ84W90DN8P72SZ1NF', 'order_01JX54W2BPDJF1SWY96S375PX7', '1', 'ordli_01JX54W2BP7ZNTJEWY056EWHSE', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JX54XW8868PRBF1N6APKJBH4', 'order_01JX54XW87YAS12QR99CVP1PJS', '1', 'ordli_01JX54XW88TF282M1VPNPXGRF2', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYKHAASCZ0VKDS3VACJPAEXG', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '1', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-25 12:34:31.859+00', '2025-06-25 12:34:31.859+00', NULL, '0', '{"value": "0", "precision": 20}', NULL, NULL, NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYKJVDNDJ11SD2Q94J0P7Z3F', 'order_01JX54XW87YAS12QR99CVP1PJS', '2', 'ordli_01JX54XW88TF282M1VPNPXGRF2', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-25 13:01:20.43+00', '2025-06-25 13:01:20.43+00', NULL, '0', '{"value": "0", "precision": 20}', '10', '{"value": "10", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYKJWTY1AMNEMNMGVQ0XJMRK', 'order_01JX54W2BPDJF1SWY96S375PX7', '2', 'ordli_01JX54W2BP7ZNTJEWY056EWHSE', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-25 13:02:06.786+00', '2025-06-25 13:02:06.786+00', NULL, '0', '{"value": "0", "precision": 20}', '10', '{"value": "10", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYYD43H116XQFZ9BTA83JV79', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '2', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-29 17:52:52.266+00', '2025-06-29 17:52:52.266+00', NULL, '0', '{"value": "0", "precision": 20}', '30', '{"value": "30", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYYD8GA00FN1GC00H4V86V37', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '3', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-29 17:55:16.422+00', '2025-06-29 17:55:16.422+00', NULL, '0', '{"value": "0", "precision": 20}', '30', '{"value": "30", "precision": 20}', NULL, NULL);
INSERT INTO public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) VALUES ('orditem_01JYYD8KC4AX5NCQZ6ZTRR10PF', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '4', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '1', '{"value": "1", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', NULL, '2025-06-29 17:55:19.561+00', '2025-06-29 17:55:19.561+00', NULL, '1', '{"value": "1", "precision": 20}', '30', '{"value": "30", "precision": 20}', NULL, NULL);


--
-- Data for Name: order_line_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0BAYF2H2KQV0P2Q5HFFS02', NULL, 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:28:44.516+00', '2025-06-05 15:28:44.516+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0BHJ9JRXC9R1M9KERSJ8TA', NULL, 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0BMYF7T4TJQVWMY09XXX4E', NULL, 'M', 'Medusa Shorts', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', 'variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'shorts', 'SHORTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', NULL, 'M', 'Medusa Sweatpants', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png', 'variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'Medusa Sweatpants', 'Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatpants', 'SWEATPANTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0C6419FRKE9RN75M5HXGCD', NULL, 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:43:34.953+00', '2025-06-05 15:43:34.953+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0CJYT462S762WQ2B78HWJM', NULL, 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0CJYT4VQGQ67W28WHM56GG', NULL, 'L / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVGHX1K8469E7SEG4TC', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-L-BLACK', NULL, 'L / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0DPJ0N9WW0SYSK6FSZRWDY', NULL, 'M / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-M-BLACK', NULL, 'M / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 16:10:02.135+00', '2025-06-05 16:10:02.135+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0VR8HG4SNF471MGP24WN95', NULL, 'S / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-S-BLACK', NULL, 'S / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 20:15:38.035+00', '2025-06-05 20:15:38.035+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX0WSYM50NC20EPZXB2ZQ0W7', NULL, 'S / Black', 'Medusa T-Shirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', 'variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 't-shirt', 'SHIRT-S-BLACK', NULL, 'S / Black', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX54W2BP7ZNTJEWY056EWHSE', NULL, 'M', 'Medusa Sweatshirt', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', 'variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'sweatshirt', 'SWEATSHIRT-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JX54XW88TF282M1VPNPXGRF2', NULL, 'M', 'Medusa Shorts', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', 'variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', NULL, NULL, NULL, 'shorts', 'SHORTS-M', NULL, 'M', NULL, 't', 't', 'f', NULL, NULL, '10', '{"value": "10", "precision": 20}', '{}', '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL, 'f', NULL);
INSERT INTO public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id) VALUES ('ordli_01JYKHAASBXAFGSWGGMDNSAVZM', NULL, 'Orange', 'David Bryant Tumbler', NULL, 'variant_01JY9RQT7QFV055A1ERPEKTEC0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', '20oz | Double Wall Stainless Steel Tumbler', NULL, 'David Bryant collection', 'david-bryant-tumbler', NULL, NULL, 'Orange', NULL, 't', 'f', 'f', NULL, NULL, '30', '{"value": "30", "precision": 20}', '{}', '2025-06-25 12:34:31.858+00', '2025-06-25 12:34:31.858+00', NULL, 'f', NULL);


--
-- Data for Name: order_line_item_adjustment; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_line_item_adjustment


--
-- Data for Name: order_line_item_tax_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_line_item_tax_line


--
-- Data for Name: order_payment_collection; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BAYF17QN2XFYTETW5NB2V', 'pay_col_01JX0BARADP3SGSE1YWCJR81J2', 'ordpay_01JX0BAYGX2S3A738BMZ4WFYNV', '2025-06-05 15:28:44.567267+00', '2025-06-05 15:28:44.567267+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BHJ9JK8Y2XEQ608FRBBGH', 'pay_col_01JX0BHF42A3G1B8GREVT9ZGBM', 'ordpay_01JX0BHJAZX7783WJ6KNPAEEDD', '2025-06-05 15:32:21.465246+00', '2025-06-05 15:32:21.465246+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BMYF64VEDA5SNVFMRMJZ0', 'pay_col_01JX0BMSXYN4VRYJZ1R6NR11T0', 'ordpay_01JX0BMYGPYJV7RZPPK74PV2FD', '2025-06-05 15:34:12.237684+00', '2025-06-05 15:34:12.237684+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0BYZRJ3C29YVE1MPM1EV3R', 'pay_col_01JX0BYVJQ89N19WX3HW4H3Y1H', 'ordpay_01JX0BYZSZGYH667H4F2C2Z5DM', '2025-06-05 15:39:41.240964+00', '2025-06-05 15:39:41.240964+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0C6419TH2M4AE43X5YVBN9', 'pay_col_01JX0C5WG6MNREESB8Q5DKC78S', 'ordpay_01JX0C642M0ZYAVZ4DRFSJS3HX', '2025-06-05 15:43:34.991044+00', '2025-06-05 15:43:34.991044+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0CJYT4V3N32PHY9ATHY5TS', 'pay_col_01JX0CJRF69JR4RRA8YQVC6B1P', 'ordpay_01JX0CJYVWY8MQX6EMR0M9XAJ9', '2025-06-05 15:50:35.636478+00', '2025-06-05 15:50:35.636478+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0DPJ0MYS4ARHNDGG7AGXXX', 'pay_col_01JX0DPEM0MCKDFVCWTGS3ZXYC', 'ordpay_01JX0DPJ2KAJ78QGQ2ETRZ5THJ', '2025-06-05 16:10:02.187691+00', '2025-06-05 16:10:02.187691+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0VR8HG0QG27GD6E193TG7T', 'pay_col_01JX0VR5QR6Q2XJT6FM7R8Z4BX', 'ordpay_01JX0VR8M7QRKMRT2VQ1VC7FN3', '2025-06-05 20:15:38.106985+00', '2025-06-05 20:15:38.106985+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX0WSYM5TFSXBRD93D3H8279', 'pay_col_01JX0WSV30B23NFEPS22YKPF0C', 'ordpay_01JX0WSYP1XVPVJ721H8635JNG', '2025-06-05 20:34:02.042904+00', '2025-06-05 20:34:02.042904+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX54W2BPDJF1SWY96S375PX7', 'pay_col_01JX54VZGQ87YRERYW8DAKH9CP', 'ordpay_01JX54W2DEBPK5SHAGGPZ59DSM', '2025-06-07 12:11:57.735242+00', '2025-06-07 12:11:57.735242+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JX54XW87YAS12QR99CVP1PJS', 'pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', 'ordpay_01JX54XWA23Q43FZ1NS39NYV63', '2025-06-07 12:12:57.017062+00', '2025-06-07 12:12:57.017062+00', NULL);
INSERT INTO public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) VALUES ('order_01JYKHAAS9JG6ZXZJG0D6RZFMS', 'pay_col_01JYKH8QDJ1DP15J879G4R90XT', 'ordpay_01JYKHAAYJY30JZD5D4ABDBCQ7', '2025-06-25 12:34:31.995291+00', '2025-06-25 12:34:31.995291+00', NULL);


--
-- Data for Name: order_promotion; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_promotion


--
-- Data for Name: order_shipping; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0BAYF1GYY7MZHD46CQAW5R', 'order_01JX0BAYF17QN2XFYTETW5NB2V', '1', 'ordsm_01JX0BAYF1G2ECD8KNHATZXVYA', '2025-06-05 15:28:44.517+00', '2025-06-05 15:28:44.517+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0BHJ9J7E287BRNX64TPT5S', 'order_01JX0BHJ9JK8Y2XEQ608FRBBGH', '1', 'ordsm_01JX0BHJ9JJHFH3SE59K75MXX9', '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0BMYF6YY5WJ3FJN8W5N66R', 'order_01JX0BMYF64VEDA5SNVFMRMJZ0', '1', 'ordsm_01JX0BMYF64PT4P77MJBJD8WQX', '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0BYZRH7810RK0M94RKHHJR', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '1', 'ordsm_01JX0BYZRHETD2KP82C0Y9Q5Y4', '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0C1FMQWR184Y4NAKD9DY7J', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '2', 'ordsm_01JX0BYZRHETD2KP82C0Y9Q5Y4', '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0C1NE4Y8VBN1E8WGMET5X7', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '3', 'ordsm_01JX0BYZRHETD2KP82C0Y9Q5Y4', '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0C1R4GMB26BYSX23K4YPXC', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '4', 'ordsm_01JX0BYZRHETD2KP82C0Y9Q5Y4', '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0C6418HYXH9M5WHX5Q9SYW', 'order_01JX0C6419TH2M4AE43X5YVBN9', '1', 'ordsm_01JX0C6418TAPZY4ET04XETGM6', '2025-06-05 15:43:34.954+00', '2025-06-05 15:43:34.954+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0CJYT38ND9PW20WFWJD7QE', 'order_01JX0CJYT4V3N32PHY9ATHY5TS', '1', 'ordsm_01JX0CJYT3GJMJZXKMSD07YR17', '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0DPJ0MASY7HFVZ2FQ2FEFX', 'order_01JX0DPJ0MYS4ARHNDGG7AGXXX', '1', 'ordsm_01JX0DPJ0MA3C99HYPZRHG10AT', '2025-06-05 16:10:02.136+00', '2025-06-05 16:10:02.136+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0VR8HG2D0ZCVV728N1QN2X', 'order_01JX0VR8HG0QG27GD6E193TG7T', '1', 'ordsm_01JX0VR8HGAG8E8D83PAZE35BW', '2025-06-05 20:15:38.035+00', '2025-06-05 20:15:38.035+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX0WSYM5PWMDBNBCGAPB0XE5', 'order_01JX0WSYM5TFSXBRD93D3H8279', '1', 'ordsm_01JX0WSYM5Y1V2Y3E839E8SC8M', '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX54W2BP46V9HFWYC5B3XMA9', 'order_01JX54W2BPDJF1SWY96S375PX7', '1', 'ordsm_01JX54W2BPT6NNXD6BCT1QASGJ', '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JX54XW87SFX1QSYCW3PCP7ND', 'order_01JX54XW87YAS12QR99CVP1PJS', '1', 'ordsm_01JX54XW87RCTJ2RKX2C2NT88E', '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYKHAAS8M987SPJ1W9JJW6DY', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '1', 'ordsm_01JYKHAAS715YEB2ME03KCNR7F', '2025-06-25 12:34:31.863+00', '2025-06-25 12:34:31.863+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYKJVDNJX12R0V2N71VQZR33', 'order_01JX54XW87YAS12QR99CVP1PJS', '2', 'ordsm_01JX54XW87RCTJ2RKX2C2NT88E', '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYKJWTYEXW8BCPFFYJHEWRYH', 'order_01JX54W2BPDJF1SWY96S375PX7', '2', 'ordsm_01JX54W2BPT6NNXD6BCT1QASGJ', '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYYD43H1CRTEZWHDKGQ8HNCT', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '2', 'ordsm_01JYKHAAS715YEB2ME03KCNR7F', '2025-06-25 12:34:31.863+00', '2025-06-25 12:34:31.863+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYYD8GA1RP4CSV11H4SSEWT5', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '3', 'ordsm_01JYKHAAS715YEB2ME03KCNR7F', '2025-06-25 12:34:31.863+00', '2025-06-25 12:34:31.863+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordspmv_01JYYD8KC521XGB4VMJ5P5YQYP', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '4', 'ordsm_01JYKHAAS715YEB2ME03KCNR7F', '2025-06-25 12:34:31.863+00', '2025-06-25 12:34:31.863+00', NULL, NULL, NULL, NULL);


--
-- Data for Name: order_shipping_method; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0BAYF1G2ECD8KNHATZXVYA', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:28:44.517+00', '2025-06-05 15:28:44.517+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0BHJ9JJHFH3SE59K75MXX9', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0BMYF64PT4P77MJBJD8WQX', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0BYZRHETD2KP82C0Y9Q5Y4', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:39:41.203+00', '2025-06-05 15:39:41.203+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0C6418TAPZY4ET04XETGM6', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:43:34.954+00', '2025-06-05 15:43:34.954+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0CJYT3GJMJZXKMSD07YR17', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0DPJ0MA3C99HYPZRHG10AT', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 16:10:02.136+00', '2025-06-05 16:10:02.136+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0VR8HGAG8E8D83PAZE35BW', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 20:15:38.035+00', '2025-06-05 20:15:38.035+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX0WSYM5Y1V2Y3E839E8SC8M', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX54W2BPT6NNXD6BCT1QASGJ', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JX54XW87RCTJ2RKX2C2NT88E', 'Standard Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '{}', NULL, '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL, 'f');
INSERT INTO public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) VALUES ('ordsm_01JYKHAAS715YEB2ME03KCNR7F', 'Express Shipping', NULL, '10', '{"value": "10", "precision": 20}', 'f', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '{}', NULL, '2025-06-25 12:34:31.862+00', '2025-06-25 12:34:31.862+00', NULL, 'f');


--
-- Data for Name: order_shipping_method_adjustment; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_shipping_method_adjustment


--
-- Data for Name: order_shipping_method_tax_line; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.order_shipping_method_tax_line


--
-- Data for Name: order_summary; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0BAYF0FD28AM8B4KQCQPCZ', 'order_01JX0BAYF17QN2XFYTETW5NB2V', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 30, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 30, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 30, "original_order_total": 30, "raw_accounting_total": {"value": "30", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "30", "precision": 20}, "raw_current_order_total": {"value": "30", "precision": 20}, "raw_original_order_total": {"value": "30", "precision": 20}}', '2025-06-05 15:28:44.516+00', '2025-06-05 15:28:44.516+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0BHJ9JG3V8184FB6H5BHQA', 'order_01JX0BHJ9JK8Y2XEQ608FRBBGH', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 40, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "40", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}', '2025-06-05 15:32:21.427+00', '2025-06-05 15:32:21.427+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0BMYF6SQY9HH61FT3KCFTH', 'order_01JX0BMYF64VEDA5SNVFMRMJZ0', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:34:12.199+00', '2025-06-05 15:34:12.199+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0BYZRHZTZQBCPFRJR6TC7B', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '1', '{"paid_total": 20, "raw_paid_total": {"value": "20", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 20, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "20", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:39:41.203+00', '2025-06-05 15:40:56.688+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0C1FMQXD7J3XGB1VCWBT7Z', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '2', '{"paid_total": 20, "raw_paid_total": {"value": "20", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 20, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "20", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:41:03.006+00', '2025-06-05 15:41:03.006+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0C1NE3FTB7RZ5ZC1VVS8A0', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '3', '{"paid_total": 20, "raw_paid_total": {"value": "20", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 20, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "20", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:41:08.936+00', '2025-06-05 15:41:08.936+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0C1R4GWNJYK0BA24BSGPRE', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '4', '{"paid_total": 20, "raw_paid_total": {"value": "20", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 20, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "20", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:41:11.701+00', '2025-06-05 15:41:11.701+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0C6418XM19Q1YMRV7XXK5E', 'order_01JX0C6419TH2M4AE43X5YVBN9', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 15:43:34.953+00', '2025-06-05 15:43:34.953+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0CJYT38K1XW276ZS2ERHQ5', 'order_01JX0CJYT4V3N32PHY9ATHY5TS', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 50, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 50, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 50, "original_order_total": 50, "raw_accounting_total": {"value": "50", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "50", "precision": 20}, "raw_current_order_total": {"value": "50", "precision": 20}, "raw_original_order_total": {"value": "50", "precision": 20}}', '2025-06-05 15:50:35.589+00', '2025-06-05 15:50:35.589+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0DPJ0K4ZRHVN9RNYQGKVC6', 'order_01JX0DPJ0MYS4ARHNDGG7AGXXX', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 16:10:02.135+00', '2025-06-05 16:10:02.135+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0VR8HFNZ6EG1WKZ5GVV7GG', 'order_01JX0VR8HG0QG27GD6E193TG7T', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 20:15:38.035+00', '2025-06-05 20:15:38.035+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX0WSYM4NX7STCB67AQXPFWE', 'order_01JX0WSYM5TFSXBRD93D3H8279', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-05 20:34:01.99+00', '2025-06-05 20:34:01.99+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX54W2BPVFQ292WVDCZ6SBRZ', 'order_01JX54W2BPDJF1SWY96S375PX7', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-07 12:11:57.687+00', '2025-06-07 12:11:57.687+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JX54XW87Q1JF3FN82DDV75BW', 'order_01JX54XW87YAS12QR99CVP1PJS', '1', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 20, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 20, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 20, "original_order_total": 20, "raw_accounting_total": {"value": "20", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "20", "precision": 20}, "raw_current_order_total": {"value": "20", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-07 12:12:56.968+00', '2025-06-07 12:12:56.968+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYKHAAS5G6NJ0QKA3ZVMGBZN', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '1', '{"paid_total": 40, "raw_paid_total": {"value": "40", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 40, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "40", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}', '2025-06-25 12:34:31.861+00', '2025-06-25 13:00:42.214+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYKJVDNFYWN23N0D3BFRMT2M', 'order_01JX54XW87YAS12QR99CVP1PJS', '2', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 0, "credit_line_total": 20, "transaction_total": 0, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 0, "original_order_total": 20, "raw_accounting_total": {"value": "0", "precision": 20}, "raw_credit_line_total": {"value": "20", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "0", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-25 13:01:20.431+00', '2025-06-25 13:01:20.431+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYKJWTY5C2D41PVERTVHT037', 'order_01JX54W2BPDJF1SWY96S375PX7', '2', '{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 0, "credit_line_total": 20, "transaction_total": 0, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 0, "original_order_total": 20, "raw_accounting_total": {"value": "0", "precision": 20}, "raw_credit_line_total": {"value": "20", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "0", "precision": 20}, "raw_original_order_total": {"value": "20", "precision": 20}}', '2025-06-25 13:02:06.789+00', '2025-06-25 13:02:06.789+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYYD43H1QNYBGAATV6RSVXDC', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '2', '{"paid_total": 40, "raw_paid_total": {"value": "40", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 40, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "40", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}', '2025-06-29 17:52:52.267+00', '2025-06-29 17:52:52.267+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYYD8GA0JGGJ6VWN981HSYJN', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '3', '{"paid_total": 40, "raw_paid_total": {"value": "40", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 40, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "40", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}', '2025-06-29 17:55:16.422+00', '2025-06-29 17:55:16.422+00', NULL);
INSERT INTO public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) VALUES ('ordsum_01JYYD8KC5QBD0QP9W5XEC90TY', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '4', '{"paid_total": 40, "raw_paid_total": {"value": "40", "precision": 20}, "refunded_total": 0, "accounting_total": 40, "credit_line_total": 0, "transaction_total": 40, "pending_difference": 0, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 40, "original_order_total": 40, "raw_accounting_total": {"value": "40", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "40", "precision": 20}, "raw_pending_difference": {"value": "0", "precision": 20}, "raw_current_order_total": {"value": "40", "precision": 20}, "raw_original_order_total": {"value": "40", "precision": 20}}', '2025-06-29 17:55:19.561+00', '2025-06-29 17:55:19.561+00', NULL);


--
-- Data for Name: order_transaction; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.order_transaction (id, order_id, version, amount, raw_amount, currency_code, reference, reference_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordtrx_01JX0C19F5M7DP314V2SHJK0XE', 'order_01JX0BYZRJ3C29YVE1MPM1EV3R', '1', '20', '{"value": "20", "precision": 20}', 'eur', 'capture', 'capt_01JX0C19DMYMJRJJM3QC1ESH3P', '2025-06-05 15:40:56.677+00', '2025-06-05 15:40:56.677+00', NULL, NULL, NULL, NULL);
INSERT INTO public.order_transaction (id, order_id, version, amount, raw_amount, currency_code, reference, reference_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) VALUES ('ordtrx_01JYKJT8A7HT26Y7YQNA31TPDC', 'order_01JYKHAAS9JG6ZXZJG0D6RZFMS', '1', '40', '{"value": "40", "precision": 20}', 'usd', 'capture', 'capt_01JYKJT87X8HTM25AAR0TC0K8J', '2025-06-25 13:00:42.184+00', '2025-06-25 13:00:42.184+00', NULL, NULL, NULL, NULL);


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0BAYDZFX85TA3MP0RJ1JX6', '30', '{"value": "30", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:28:44.479+00', '2025-06-05 15:28:44.479+00', NULL, NULL, NULL, 'pay_col_01JX0BARADP3SGSE1YWCJR81J2', 'payses_01JX0BARBW7T8N320FQ41MWJT8', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0BHJ8H8MPDQ14W4F92VN84', '40', '{"value": "40", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:32:21.393+00', '2025-06-05 15:32:21.393+00', NULL, NULL, NULL, 'pay_col_01JX0BHF42A3G1B8GREVT9ZGBM', 'payses_01JX0BHF5P50G7Y39CDNMTSQBE', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0BMYE90RB7T26H3R0Y595A', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:34:12.17+00', '2025-06-05 15:34:12.17+00', NULL, NULL, NULL, 'pay_col_01JX0BMSXYN4VRYJZ1R6NR11T0', 'payses_01JX0BMSZHZXZ1BH80GD0JBWS6', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0BYZQF9FQPV1FHH639N0A5', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:39:41.167+00', '2025-06-05 15:40:56.643+00', NULL, '2025-06-05 15:40:56.633+00', NULL, 'pay_col_01JX0BYVJQ89N19WX3HW4H3Y1H', 'payses_01JX0BYVKYKFF87H14ASEX19NA', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0C640AASE3DJ1KF2FEPWGF', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:43:34.922+00', '2025-06-05 15:43:34.922+00', NULL, NULL, NULL, 'pay_col_01JX0C5WG6MNREESB8Q5DKC78S', 'payses_01JX0C5WHQZ1XW77SRKXNQCJ29', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0CJYS4AWSD0CNQ92ZRJBJJ', '50', '{"value": "50", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 15:50:35.556+00', '2025-06-05 15:50:35.556+00', NULL, NULL, NULL, 'pay_col_01JX0CJRF69JR4RRA8YQVC6B1P', 'payses_01JX0CJRGS8AP1JZYBE6TQSR4D', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0DPHZ70N5QSGJGDS76MAZS', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 16:10:02.088+00', '2025-06-05 16:10:02.088+00', NULL, NULL, NULL, 'pay_col_01JX0DPEM0MCKDFVCWTGS3ZXYC', 'payses_01JX0DPENYADMKRX5MBKZDW1G0', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0VR8G52F5S1CZ83ZZ9J15P', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 20:15:37.989+00', '2025-06-05 20:15:37.989+00', NULL, NULL, NULL, 'pay_col_01JX0VR5QR6Q2XJT6FM7R8Z4BX', 'payses_01JX0VR5S7CP56826A9HRCRNA7', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX0WSYK2XDFF76QV7JB6ASQC', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-05 20:34:01.954+00', '2025-06-05 20:34:01.954+00', NULL, NULL, NULL, 'pay_col_01JX0WSV30B23NFEPS22YKPF0C', 'payses_01JX0WSV4BZ96BPWEAWFBCR9D4', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JYKHAAPEBY61PKXS7NH14J8K', '40', '{"value": "40", "precision": 20}', 'usd', 'pp_system_default', '{}', '2025-06-25 12:34:31.758+00', '2025-06-25 13:00:42.127+00', NULL, '2025-06-25 13:00:42.118+00', NULL, 'pay_col_01JYKH8QDJ1DP15J879G4R90XT', 'payses_01JYKHA0RSTXC0ATA2WNPD463B', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX54XW74XW2SBSS7T10YBYD5', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-07 12:12:56.933+00', '2025-06-25 13:01:20.344+00', NULL, NULL, '2025-06-25 13:01:20.311+00', 'pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', 'payses_01JX54XSK7XM2695D429XNJSKP', NULL);
INSERT INTO public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) VALUES ('pay_01JX54W2AEG0J23KVJBDF1VKPP', '20', '{"value": "20", "precision": 20}', 'eur', 'pp_system_default', '{}', '2025-06-07 12:11:57.646+00', '2025-06-25 13:02:06.665+00', NULL, NULL, '2025-06-25 13:02:06.654+00', 'pay_col_01JX54VZGQ87YRERYW8DAKH9CP', 'payses_01JX54VZK5R10237W1R4CEZGS1', NULL);


--
-- Data for Name: payment_collection; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0BARADP3SGSE1YWCJR81J2', 'eur', '30', '{"value": "30", "precision": 20}', '30', '{"value": "30", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:28:38.222+00', '2025-06-05 15:28:44.49+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0BHF42A3G1B8GREVT9ZGBM', 'eur', '40', '{"value": "40", "precision": 20}', '40', '{"value": "40", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:32:18.178+00', '2025-06-05 15:32:21.405+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0BMSXYN4VRYJZ1R6NR11T0', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:34:07.55+00', '2025-06-05 15:34:12.18+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0BYVJQ89N19WX3HW4H3Y1H', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:39:36.919+00', '2025-06-05 15:40:56.66+00', NULL, '2025-06-05 15:40:56.656+00', 'completed', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0C5WG6MNREESB8Q5DKC78S', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:43:27.239+00', '2025-06-05 15:43:34.935+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0CJRF69JR4RRA8YQVC6B1P', 'eur', '50', '{"value": "50", "precision": 20}', '50', '{"value": "50", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 15:50:29.094+00', '2025-06-05 15:50:35.567+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0DPEM0MCKDFVCWTGS3ZXYC', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 16:09:58.656+00', '2025-06-05 16:10:02.105+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0VR5QR6Q2XJT6FM7R8Z4BX', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 20:15:35.16+00', '2025-06-05 20:15:38.005+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX0WSV30B23NFEPS22YKPF0C', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-05 20:33:58.368+00', '2025-06-05 20:34:01.968+00', NULL, NULL, 'authorized', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JYKH8QDJ1DP15J879G4R90XT', 'usd', '40', '{"value": "40", "precision": 20}', '40', '{"value": "40", "precision": 20}', '40', '{"value": "40", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-25 12:33:39.251+00', '2025-06-25 13:00:42.149+00', NULL, '2025-06-25 13:00:42.144+00', 'completed', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-07 12:12:54.21+00', '2025-06-25 13:01:20.452+00', NULL, NULL, 'canceled', NULL);
INSERT INTO public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) VALUES ('pay_col_01JX54VZGQ87YRERYW8DAKH9CP', 'eur', '20', '{"value": "20", "precision": 20}', '20', '{"value": "20", "precision": 20}', '0', '{"value": "0", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-07 12:11:54.776+00', '2025-06-25 13:02:06.823+00', NULL, NULL, 'canceled', NULL);


--
-- Data for Name: payment_collection_payment_providers; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.payment_collection_payment_providers


--
-- Data for Name: payment_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe-przelewy24_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe-ideal_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe-giropay_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe-blik_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_stripe-bancontact_stripe', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);
INSERT INTO public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) VALUES ('pp_system_default', 't', '2025-06-04 18:27:13.646+00', '2025-06-04 18:27:13.646+00', NULL);


--
-- Data for Name: payment_session; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0BARBW7T8N320FQ41MWJT8', 'eur', '30', '{"value": "30", "precision": 20}', 'pp_system_default', '{}', '{}', 'authorized', '2025-06-05 15:28:44.474+00', 'pay_col_01JX0BARADP3SGSE1YWCJR81J2', NULL, '2025-06-05 15:28:38.269+00', '2025-06-05 15:28:44.479+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0BHF5P50G7Y39CDNMTSQBE', 'eur', '40', '{"value": "40", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 15:32:21.39+00', 'pay_col_01JX0BHF42A3G1B8GREVT9ZGBM', NULL, '2025-06-05 15:32:18.23+00', '2025-06-05 15:32:21.393+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0BMSZHZXZ1BH80GD0JBWS6', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 15:34:12.166+00', 'pay_col_01JX0BMSXYN4VRYJZ1R6NR11T0', NULL, '2025-06-05 15:34:07.601+00', '2025-06-05 15:34:12.17+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0BYVKYKFF87H14ASEX19NA', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 15:39:41.164+00', 'pay_col_01JX0BYVJQ89N19WX3HW4H3Y1H', NULL, '2025-06-05 15:39:36.958+00', '2025-06-05 15:39:41.168+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0C5WHQZ1XW77SRKXNQCJ29', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 15:43:34.92+00', 'pay_col_01JX0C5WG6MNREESB8Q5DKC78S', NULL, '2025-06-05 15:43:27.287+00', '2025-06-05 15:43:34.923+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0CJRGS8AP1JZYBE6TQSR4D', 'eur', '50', '{"value": "50", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 15:50:35.554+00', 'pay_col_01JX0CJRF69JR4RRA8YQVC6B1P', NULL, '2025-06-05 15:50:29.145+00', '2025-06-05 15:50:35.556+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0DPENYADMKRX5MBKZDW1G0', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 16:10:02.083+00', 'pay_col_01JX0DPEM0MCKDFVCWTGS3ZXYC', NULL, '2025-06-05 16:09:58.719+00', '2025-06-05 16:10:02.089+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0VR5S7CP56826A9HRCRNA7', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 20:15:37.983+00', 'pay_col_01JX0VR5QR6Q2XJT6FM7R8Z4BX', NULL, '2025-06-05 20:15:35.207+00', '2025-06-05 20:15:37.989+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX0WSV4BZ96BPWEAWFBCR9D4', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0BE4GQE5ZDVB833EP1TTRC", "email": "viruky@mailinator.com", "phone": "+1 (291) 153-7883", "metadata": null, "addresses": [], "last_name": "Mcneil", "first_name": "Karly", "company_name": null}}', 'authorized', '2025-06-05 20:34:01.95+00', 'pay_col_01JX0WSV30B23NFEPS22YKPF0C', NULL, '2025-06-05 20:33:58.412+00', '2025-06-05 20:34:01.955+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX54VZK5R10237W1R4CEZGS1', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "email": "john.steven.ur@gmail.com", "phone": "0592330177", "metadata": null, "addresses": [{"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}], "last_name": "Steven", "first_name": "John", "company_name": null, "billing_address": {"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}}}', 'authorized', '2025-06-07 12:11:57.625+00', 'pay_col_01JX54VZGQ87YRERYW8DAKH9CP', NULL, '2025-06-07 12:11:54.853+00', '2025-06-07 12:11:57.646+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JX54XSK7XM2695D429XNJSKP', 'eur', '20', '{"value": "20", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "email": "john.steven.ur@gmail.com", "phone": "0592330177", "metadata": null, "addresses": [{"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}], "last_name": "Steven", "first_name": "John", "company_name": null, "billing_address": {"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}}}', 'authorized', '2025-06-07 12:12:56.929+00', 'pay_col_01JX54XSJ1F1Q35EXBPRSCT7YB', NULL, '2025-06-07 12:12:54.248+00', '2025-06-07 12:12:56.933+00', NULL);
INSERT INTO public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) VALUES ('payses_01JYKHA0RSTXC0ATA2WNPD463B', 'usd', '40', '{"value": "40", "precision": 20}', 'pp_system_default', '{}', '{"customer": {"id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "email": "john.steven.ur@gmail.com", "phone": "+233 59 233 0177", "metadata": null, "addresses": [{"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}, {"id": "cuaddr_01JYCSG4NX26J68TCCXQ8Q1GWA", "city": "Consequatur dolore l", "phone": "+1 (356) 235-8841", "company": "Lewis Harding LLC", "metadata": null, "province": "Veritatis nemo culpa", "address_1": "809 Milton Extension", "address_2": "Ipsa obcaecati solu", "last_name": "Bass", "created_at": "2025-06-22T21:42:49.790Z", "deleted_at": null, "first_name": "Leandra", "updated_at": "2025-06-22T21:42:49.790Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "Doloremque nulla ips", "address_name": null, "country_code": "dk", "is_default_billing": false, "is_default_shipping": false}], "last_name": "Bradshaw", "first_name": "Gillian", "company_name": "Griffin and Massey Co", "billing_address": {"id": "cuaddr_01JX0X28KB56SHV2QD7FMV6ENX", "city": "Accra", "phone": "0592330177", "company": "Stevnio", "metadata": null, "province": "Accra", "address_1": "Saint Johns Ave", "address_2": "APT 37", "last_name": "Steven", "created_at": "2025-06-05T20:38:34.348Z", "deleted_at": null, "first_name": "John", "updated_at": "2025-06-05T20:38:34.348Z", "customer_id": "cus_01JX0X0BEBRAQ5T528K9B9K4G5", "postal_code": "33", "address_name": null, "country_code": "gb", "is_default_billing": false, "is_default_shipping": false}}}', 'authorized', '2025-06-25 12:34:31.752+00', 'pay_col_01JYKH8QDJ1DP15J879G4R90XT', NULL, '2025-06-25 12:34:21.594+00', '2025-06-25 12:34:31.759+00', NULL);


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPSDSH2ZKT1W1M5MBKN', NULL, 'pset_01JX0A3KPTPQ6YMCH0NWYGVQ6C', 'usd', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.548+00', '2025-06-05 15:07:15.548+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPSHZYREHAF7ZABP1H5', NULL, 'pset_01JX0A3KPTPQ6YMCH0NWYGVQ6C', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPTHGN5B8GK9F1VQDYD', NULL, 'pset_01JX0A3KPTPQ6YMCH0NWYGVQ6C', 'eur', '{"value": "10", "precision": 20}', '1', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPV7Q36S0JPY04Y56PQ', NULL, 'pset_01JX0A3KPV2HZB8AQNRPTCC1S1', 'usd', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPVYMWTWGFGECV3E48R', NULL, 'pset_01JX0A3KPV2HZB8AQNRPTCC1S1', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KPV6AEBM3Y1T5CGZRGJ', NULL, 'pset_01JX0A3KPV2HZB8AQNRPTCC1S1', 'eur', '{"value": "10", "precision": 20}', '1', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY6GV0JH1NT86HE7BGY', NULL, 'pset_01JX0A3KY62QTJEC74NA4GDKQG', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY6AF89G3SQ8DZRCBVC', NULL, 'pset_01JX0A3KY62QTJEC74NA4GDKQG', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY7CE7MH4QTXDYDN360', NULL, 'pset_01JX0A3KY7GSXRXGNYPNZK73TN', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY78DXZ1JK2X0JDHXHG', NULL, 'pset_01JX0A3KY7GSXRXGNYPNZK73TN', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY74QRBDYXQB1XCA9WK', NULL, 'pset_01JX0A3KY8WSXWM5QQBRVRV405', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY7BY9NTAJGW7D24EPV', NULL, 'pset_01JX0A3KY8WSXWM5QQBRVRV405', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY86KK8JW8XRM67N7BE', NULL, 'pset_01JX0A3KY8WRKB8SEVSFRRG9JM', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY85S8Y4BQNTNG7XA3D', NULL, 'pset_01JX0A3KY8WRKB8SEVSFRRG9JM', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY8K26PE6Z8HZ2284GF', NULL, 'pset_01JX0A3KY87PEJAQFZ9DNNNHD9', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY8AGYZDRYAM037AWW9', NULL, 'pset_01JX0A3KY87PEJAQFZ9DNNNHD9', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY8Z3HN3S2JKHGF00GQ', NULL, 'pset_01JX0A3KY8RDZWDZY3NKHZJ20J', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY8NBM9YTNRSQQXVG0V', NULL, 'pset_01JX0A3KY8RDZWDZY3NKHZJ20J', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY93TWQN1JR6P6FEGJD', NULL, 'pset_01JX0A3KY9WNR5N40QMKGCBHA0', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY9R2ZS3394TS806EX3', NULL, 'pset_01JX0A3KY9WNR5N40QMKGCBHA0', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY94GE2T302T1938JJ4', NULL, 'pset_01JX0A3KY9A9KVH9TKHBPDG2KF', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY91N2C54FG1VK6KCZ1', NULL, 'pset_01JX0A3KY9A9KVH9TKHBPDG2KF', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY9B4J1EV907YKM6ZBB', NULL, 'pset_01JX0A3KY9ZYW9F0RC6Q61CFK5', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY98AX0BKH73NXAMANY', NULL, 'pset_01JX0A3KY9ZYW9F0RC6Q61CFK5', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY9RD1DDR0FDFVTWSGS', NULL, 'pset_01JX0A3KY9W9YE1HJH9WYE554G', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KY9FYA9RTZTMG0WKRSX', NULL, 'pset_01JX0A3KY9W9YE1HJH9WYE554G', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYAV784DTD6NCE31HRN', NULL, 'pset_01JX0A3KYA6F8KKZ0RVTETYAJC', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYAS7JPSZWNF1H41R65', NULL, 'pset_01JX0A3KYA6F8KKZ0RVTETYAJC', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYA9HFY82BY8476VSS1', NULL, 'pset_01JX0A3KYABKS63AEVHEKHKTRM', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYA9Q2A2M8QXXV1MPDS', NULL, 'pset_01JX0A3KYABKS63AEVHEKHKTRM', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYA05HED8GSWXRRBSR1', NULL, 'pset_01JX0A3KYASJ359JFW0QMTR1ZD', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYAPHMARTN1DN7Q88BW', NULL, 'pset_01JX0A3KYASJ359JFW0QMTR1ZD', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYA9FWWD0VAB89TGB2B', NULL, 'pset_01JX0A3KYA30KXTTAT15G1J2VB', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYAHEH76JB0J9HWZ9G5', NULL, 'pset_01JX0A3KYA30KXTTAT15G1J2VB', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBQ1DPB0W1NJAWF134', NULL, 'pset_01JX0A3KYBGG8CWE9NE94YBAVP', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYB013CMKY5TYXY9RY4', NULL, 'pset_01JX0A3KYBGG8CWE9NE94YBAVP', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBV64MEY8X6SVZK1ER', NULL, 'pset_01JX0A3KYBHNSMRV3R5YD2VC72', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBPCETNDSSWK41XS99', NULL, 'pset_01JX0A3KYBHNSMRV3R5YD2VC72', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBADDZJCKNJ3VTNTRB', NULL, 'pset_01JX0A3KYB3X7E2HHCWVQAADGB', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBCFQ7FT8QHAKNVAKP', NULL, 'pset_01JX0A3KYB3X7E2HHCWVQAADGB', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBYBG3BSA8EB8EJN40', NULL, 'pset_01JX0A3KYBGCD7QFM3XAFGM745', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYB67PWK17NZBGVE5PZ', NULL, 'pset_01JX0A3KYBGCD7QFM3XAFGM745', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBPBJRKT3CPPF4SQBP', NULL, 'pset_01JX0A3KYCQYP1X9HNR9TZ10F3', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYBVESMP79PXEWEY3V9', NULL, 'pset_01JX0A3KYCQYP1X9HNR9TZ10F3', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYC76GMG1VCCRVD3JE5', NULL, 'pset_01JX0A3KYC7Z4Z0GCYW2R3X2S3', 'eur', '{"value": "10", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '10', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JX0A3KYC1VQ6TNA63TF5RHJK', NULL, 'pset_01JX0A3KYC7Z4Z0GCYW2R3X2S3', 'usd', '{"value": "15", "precision": 20}', '0', '2025-06-05 15:07:15.789+00', '2025-06-05 15:07:15.789+00', NULL, NULL, '15', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9J88GBFN1FMHXJFDV8PP7M', NULL, 'pset_01JY9J88GC3JZCMEA245JE7X5D', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 15:38:28.236+00', '2025-06-21 16:04:47.65+00', '2025-06-21 16:04:47.643+00', NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9J88GBDBPC7QN2Z1YC89H1', NULL, 'pset_01JY9J88GC3JZCMEA245JE7X5D', 'usd', '{"value": "34", "precision": 20}', '0', '2025-06-21 15:38:28.237+00', '2025-06-21 16:04:47.65+00', '2025-06-21 16:04:47.643+00', NULL, '34', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9J88GBWYQKMHF426RXM9C7', NULL, 'pset_01JY9J88GC3JZCMEA245JE7X5D', 'eur', '{"value": "34", "precision": 20}', '1', '2025-06-21 15:38:28.238+00', '2025-06-21 16:04:47.65+00', '2025-06-21 16:04:47.643+00', NULL, '34', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY4CQ90Z963W7TC6ZYW9PZQ9', NULL, 'pset_01JY4CQ911H9KZAJ2789XDB4J8', 'eur', '{"value": "26", "precision": 20}', '0', '2025-06-19 15:25:36.673+00', '2025-06-21 17:51:05.721+00', '2025-06-21 17:51:05.717+00', NULL, '26', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY4CQ910R6AB9A4TQBGH2APV', NULL, 'pset_01JY4CQ911H9KZAJ2789XDB4J8', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-19 15:25:36.674+00', '2025-06-21 17:51:05.721+00', '2025-06-21 17:51:05.717+00', NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY4CQ911C8KB9WYJC1K8NTHD', NULL, 'pset_01JY4CQ911H9KZAJ2789XDB4J8', 'eur', '{"value": "20", "precision": 20}', '1', '2025-06-19 15:25:36.674+00', '2025-06-21 17:51:05.721+00', '2025-06-21 17:51:05.717+00', NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9PHVPPT5QAYYXB44BGASAQ', NULL, 'pset_01JY9PHVPQ3MBG4HAHK67CD5WR', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 16:53:37.111+00', '2025-06-21 21:35:08.636+00', '2025-06-21 21:35:08.628+00', NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9PHVPQ6P3XD8TDRM3AWHPF', NULL, 'pset_01JY9PHVPQ3MBG4HAHK67CD5WR', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 16:53:37.111+00', '2025-06-21 21:35:08.636+00', '2025-06-21 21:35:08.628+00', NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZ96T22YF4GWX7ZKZB5', NULL, 'pset_01JYA8DVZA8D7WXZS6CYB43A43', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZAF2VRD0DE6RAVY4BH', NULL, 'pset_01JYA8DVZA8D7WXZS6CYB43A43', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZAFSD5JVYXRDW6FSET', NULL, 'pset_01JYA8DVZA7ZGZDQCQRMBE0MY8', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZAP9EY6GF3A5JF7NX7', NULL, 'pset_01JYA8DVZA7ZGZDQCQRMBE0MY8', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZAC10P43ZEMVFRJEK1', NULL, 'pset_01JYA8DVZAN77D2SYC762NRN50', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZA5RV4KBVJK3GAKYXD', NULL, 'pset_01JYA8DVZAN77D2SYC762NRN50', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZATSRHCG81MB2SCHA4', NULL, 'pset_01JYA8DVZBVG3NNPC0DCPJXPTS', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZAJXX5CPJNRQDVJ46E', NULL, 'pset_01JYA8DVZBVG3NNPC0DCPJXPTS', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZBRMRE2T0M2SH1N6JK', NULL, 'pset_01JYA8DVZC0S2WGTFZ2P3DTZEG', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZCHF9ZER7Y9FZJFFP2', NULL, 'pset_01JYA8DVZC0S2WGTFZ2P3DTZEG', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZC9QR2NR8DEJVPQ5F9', NULL, 'pset_01JYA8DVZC99PK6XBA5BKA47WA', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZCS89QSZNC0W94QTA2', NULL, 'pset_01JYA8DVZC99PK6XBA5BKA47WA', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZD0E1WGBPHZ6QZJKE2', NULL, 'pset_01JYA8DVZDM5EM5X65SW5D9NSA', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZDZGEYH2RF6RCX7A8K', NULL, 'pset_01JYA8DVZDM5EM5X65SW5D9NSA', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZDZSTWVE8B2XMACSTN', NULL, 'pset_01JYA8DVZE4VQ46ZNJCYKW64EJ', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZEJSJJNP30H60MNQBB', NULL, 'pset_01JYA8DVZE4VQ46ZNJCYKW64EJ', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZE95NF9JQQ363WQP1W', NULL, 'pset_01JYA8DVZE7C6QHC9DQRP3SG7W', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZE5N3E539R1MX4DYZX', NULL, 'pset_01JYA8DVZE7C6QHC9DQRP3SG7W', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZEEFF5ERGPHKSMP3RR', NULL, 'pset_01JYA8DVZFKY52Z35SA3JZ9J8K', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZENBH150NZCDTXFGF6', NULL, 'pset_01JYA8DVZFKY52Z35SA3JZ9J8K', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZFTFKF26MZ30671C5H', NULL, 'pset_01JYA8DVZFD24313S8ZQ0T2HEE', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZFTJ3GB65H6EVZ7BTA', NULL, 'pset_01JYA8DVZFD24313S8ZQ0T2HEE', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZFDMMWN8PATKAZQX3Z', NULL, 'pset_01JYA8DVZFGXRRPEZ39Z9Y0CF7', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZF7K5SG5SDSDTCNJ08', NULL, 'pset_01JYA8DVZFGXRRPEZ39Z9Y0CF7', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZF1XZHM6BZFMYYVB9X', NULL, 'pset_01JYA8DVZFK7R336QEYF3YJ52H', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZFJX1FTYXCRQT3Y87P', NULL, 'pset_01JYA8DVZFK7R336QEYF3YJ52H', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZG2CG5G4XKM3GNSBR8', NULL, 'pset_01JYA8DVZGTM5B8SMTHAY8G4GJ', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZG2VFV2FMK52AFSZ0R', NULL, 'pset_01JYA8DVZGTM5B8SMTHAY8G4GJ', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZGRRT4XWPZ61Y0N6PA', NULL, 'pset_01JYA8DVZGSARSVZHJ6AXSMTNN', 'usd', '{"value": "20", "precision": 20}', '0', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA8DVZG3EQ7Z1J9QHE91MYC', NULL, 'pset_01JYA8DVZGSARSVZHJ6AXSMTNN', 'usd', '{"value": "20", "precision": 20}', '1', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYAATZ04K237MJBWQ334EC2M', NULL, 'pset_01JYAATZ0495EQTMVEEF35NFSN', 'usd', '{"value": "4", "precision": 20}', '0', '2025-06-21 22:48:06.917+00', '2025-06-21 22:48:06.917+00', NULL, NULL, '4', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYAATZ04MCVZKGXNF2EPS6ZW', NULL, 'pset_01JYAATZ0495EQTMVEEF35NFSN', 'usd', '{"value": "4", "precision": 20}', '1', '2025-06-21 22:48:06.917+00', '2025-06-21 22:48:06.917+00', NULL, NULL, '4', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RHMDM3S26FR0VEQN3YV5W', NULL, 'pset_01JY9RHMDNS93D7N5321YENDKC', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:28:26.805+00', '2025-06-21 17:28:26.805+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RHMDMVMQD5C6XJB0TBW5G', NULL, 'pset_01JY9RHMDNS93D7N5321YENDKC', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:28:26.805+00', '2025-06-21 17:28:26.805+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCE6FGQKWPF6E1DWKE4', NULL, 'pset_01JY9RHMDNS93D7N5321YENDKC', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RJY2Z9TAQTHZ1EESKT1E2', NULL, 'pset_01JY9RJY30BKGP2MAQJ0RMSYZN', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:29:09.472+00', '2025-06-21 17:29:09.472+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RJY302XVQVZ6G7P3RYVT1', NULL, 'pset_01JY9RJY30BKGP2MAQJ0RMSYZN', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:29:09.472+00', '2025-06-21 17:29:09.472+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCE2HMA2F8JR82DKCNE', NULL, 'pset_01JY9RJY30BKGP2MAQJ0RMSYZN', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RKVZFMHPFX3C6RWG5111Q', NULL, 'pset_01JY9RKVZG227JEN8V89NQXSX6', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:29:40.08+00', '2025-06-21 17:29:40.08+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RKVZGX8QK4BCE6JRJVAX5', NULL, 'pset_01JY9RKVZG227JEN8V89NQXSX6', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:29:40.08+00', '2025-06-21 17:29:40.08+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCE63G71J1P4JQ9N7MW', NULL, 'pset_01JY9RKVZG227JEN8V89NQXSX6', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RMP09DBJ8M1K6MFNJBG0B', NULL, 'pset_01JY9RMP0A77HKJ29X01VPYW5P', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:30:06.73+00', '2025-06-21 17:30:06.73+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RMP0AR1176249BDVE2Q03', NULL, 'pset_01JY9RMP0A77HKJ29X01VPYW5P', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:30:06.73+00', '2025-06-21 17:30:06.73+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCFEPAXK5YER6AZBCS6', NULL, 'pset_01JY9RMP0A77HKJ29X01VPYW5P', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RNEMQX2DPA1FR543SC1RG', NULL, 'pset_01JY9RNEMQB4KNV7QCPX9Z8Q4V', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:30:31.959+00', '2025-06-21 17:30:31.959+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RNEMQEP9C1Q7BTDB6EQYX', NULL, 'pset_01JY9RNEMQB4KNV7QCPX9Z8Q4V', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:30:31.959+00', '2025-06-21 17:30:31.959+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCFS0VNXMBGC67JY9AX', NULL, 'pset_01JY9RNEMQB4KNV7QCPX9Z8Q4V', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RP6JP701PK9GKR2MR3K3Q', NULL, 'pset_01JY9RP6JPTSVX05DZVPR1K6N3', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:30:56.47+00', '2025-06-21 17:30:56.47+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RP6JPM9KW1VBW030FAHD7', NULL, 'pset_01JY9RP6JPTSVX05DZVPR1K6N3', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:30:56.47+00', '2025-06-21 17:30:56.47+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCF5TJTK6C2PB8P47EN', NULL, 'pset_01JY9RP6JPTSVX05DZVPR1K6N3', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RPVW1A4FC682MTENE17CN', NULL, 'pset_01JY9RPVW2Z3E0QRFNWEW7CY9K', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:31:18.274+00', '2025-06-21 17:31:18.274+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RPVW2VERYNBWDP0ZP8G9A', NULL, 'pset_01JY9RPVW2Z3E0QRFNWEW7CY9K', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:31:18.274+00', '2025-06-21 17:31:18.274+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCF1N3FJ7HGQGQ1D9VD', NULL, 'pset_01JY9RPVW2Z3E0QRFNWEW7CY9K', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RQT8F5C3JRRGM955EDT1F', NULL, 'pset_01JY9RQT8FTYWJMQMJ3DV4VBN1', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:31:49.391+00', '2025-06-21 17:31:49.391+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RQT8FW4K1SP2HJ3P9CQM0', NULL, 'pset_01JY9RQT8FTYWJMQMJ3DV4VBN1', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:31:49.391+00', '2025-06-21 17:31:49.391+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCFC85MYJST55V6ZWCV', NULL, 'pset_01JY9RQT8FTYWJMQMJ3DV4VBN1', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RSH81RJJ602J0187PFV6F', NULL, 'pset_01JY9RSH81564WPAC0H9Z8FTMW', 'eur', '{"value": "20", "precision": 20}', '0', '2025-06-21 17:32:45.698+00', '2025-06-21 17:32:45.698+00', NULL, NULL, '20', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JY9RSH81CCA17SA24PC9E2JC', NULL, 'pset_01JY9RSH81564WPAC0H9Z8FTMW', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 17:32:45.698+00', '2025-06-21 17:32:45.698+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYCNYNCGD1470STWG3ND4Q29', NULL, 'pset_01JY9RSH81564WPAC0H9Z8FTMW', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA6P1M3FJCP7SYS0428C1DV', NULL, 'pset_01JYA6P1M33H7WVAYQT4SMG4VZ', 'usd', '{"value": "30", "precision": 20}', '0', '2025-06-21 21:35:31.46+00', '2025-06-21 21:35:31.46+00', NULL, NULL, '30', NULL, NULL);
INSERT INTO public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity) VALUES ('price_01JYA6P1M3PZGHG6BCB6PYPPGG', NULL, 'pset_01JYA6P1M33H7WVAYQT4SMG4VZ', 'usd', '{"value": "30", "precision": 20}', '1', '2025-06-21 21:35:31.46+00', '2025-06-21 21:35:31.46+00', NULL, NULL, '30', NULL, NULL);


--
-- Data for Name: price_list; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.price_list


--
-- Data for Name: price_list_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.price_list_rule


--
-- Data for Name: price_preference; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.price_preference (id, attribute, value, is_tax_inclusive, created_at, updated_at, deleted_at) VALUES ('prpref_01JX0A3KHA3S9HEDA5REZB6T5R', 'currency_code', 'usd', 'f', '2025-06-05 15:07:15.371+00', '2025-06-05 15:07:15.371+00', NULL);
INSERT INTO public.price_preference (id, attribute, value, is_tax_inclusive, created_at, updated_at, deleted_at) VALUES ('prpref_01JX0A3KJFYGEAD6KB8M0H6C3Y', 'region_id', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'f', '2025-06-05 15:07:15.407+00', '2025-06-05 15:07:15.407+00', NULL);
INSERT INTO public.price_preference (id, attribute, value, is_tax_inclusive, created_at, updated_at, deleted_at) VALUES ('prpref_01JWY3552Q5839F2C2T6279EMM', 'currency_code', 'eur', 'f', '2025-06-04 18:27:17.207+00', '2025-06-21 18:27:51.95+00', NULL);


--
-- Data for Name: price_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JX0A3KPTCRZHCN73AKAZZ2Q4', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JX0A3KPTHGN5B8GK9F1VQDYD', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JX0A3KPVP8K2WGT9XKCZ77TB', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JX0A3KPV6AEBM3Y1T5CGZRGJ', '2025-06-05 15:07:15.549+00', '2025-06-05 15:07:15.549+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JY9J88GBF4Y8G99J07JKQP9F', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JY9J88GBWYQKMHF426RXM9C7', '2025-06-21 15:38:28.238+00', '2025-06-21 16:04:47.655+00', '2025-06-21 16:04:47.643+00', 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JY4CQ910ERXSWA1SKRZGKP7Y', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JY4CQ911C8KB9WYJC1K8NTHD', '2025-06-19 15:25:36.674+00', '2025-06-21 17:51:05.728+00', '2025-06-21 17:51:05.717+00', 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZABSZ872MR43CZYRAH', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZAF2VRD0DE6RAVY4BH', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZA1GQY1F8W1KNE3QZW', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZAP9EY6GF3A5JF7NX7', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZA3GKQY0DFQA6CZN2B', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZA5RV4KBVJK3GAKYXD', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZAW0PFXE29HWXH3VTV', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZAJXX5CPJNRQDVJ46E', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZC3TBX5T8EMSNJ38RA', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZCHF9ZER7Y9FZJFFP2', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZCECYV5J75AZJY350K', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZCS89QSZNC0W94QTA2', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZDTD5T3Y7A5HRCVYX9', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZDZGEYH2RF6RCX7A8K', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZD2SMC2N9VXMZF4BVB', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZEJSJJNP30H60MNQBB', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZE2AG3RZW30SASRPCJ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZE5N3E539R1MX4DYZX', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZEBS7EZAPP584VSD51', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZENBH150NZCDTXFGF6', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZF17A0Z56RF5ZG6YZM', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZFTJ3GB65H6EVZ7BTA', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZFNFYY0S2DNRM3DRQ1', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZF7K5SG5SDSDTCNJ08', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZFSTZ7X73T3P7188Z7', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZFJX1FTYXCRQT3Y87P', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZGCXN4QGZV3K6VWPH5', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZG2VFV2FMK52AFSZ0R', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYA8DVZGDAK6HJCM8JX4227E', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA8DVZG3EQ7Z1J9QHE91MYC', '2025-06-21 22:06:00.689+00', '2025-06-21 22:06:00.689+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYAATZ04Z0TM9829R5R3536T', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYAATZ04MCVZKGXNF2EPS6ZW', '2025-06-21 22:48:06.917+00', '2025-06-21 22:48:06.917+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDG3HJRD6EH9HVQK8HJ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCE6FGQKWPF6E1DWKE4', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDG5AV1QYGQ4TD2ADQW', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCE2HMA2F8JR82DKCNE', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDGFJNACSB76E6P8W4F', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCE63G71J1P4JQ9N7MW', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDGGJENBDYRG4K116NC', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCFEPAXK5YER6AZBCS6', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDGW81Y3CH41B17M34P', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCFS0VNXMBGC67JY9AX', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDH5T26NFWH74DMN27F', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCF5TJTK6C2PB8P47EN', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDH728C819WM8PPJJHG', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCF1N3FJ7HGQGQ1D9VD', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDHNRZFA58179KPY6KB', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCFC85MYJST55V6ZWCV', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDH51WTFS1YKHKDXGAG', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYCNYNCGD1470STWG3ND4Q29', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');
INSERT INTO public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) VALUES ('prule_01JYCNYNDHBPZ59P5HDCPV7YH9', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', '0', 'price_01JYA6P1M3PZGHG6BCB6PYPPGG', '2025-06-22 20:40:51.333227+00', '2025-06-22 20:40:51.333227+00', NULL, 'region_id', 'eq');


--
-- Data for Name: price_set; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KPTPQ6YMCH0NWYGVQ6C', '2025-06-05 15:07:15.548+00', '2025-06-05 15:07:15.548+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KPV2HZB8AQNRPTCC1S1', '2025-06-05 15:07:15.548+00', '2025-06-05 15:07:15.548+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY62QTJEC74NA4GDKQG', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY7GSXRXGNYPNZK73TN', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY8WSXWM5QQBRVRV405', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY8WRKB8SEVSFRRG9JM', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY87PEJAQFZ9DNNNHD9', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY8RDZWDZY3NKHZJ20J', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY9WNR5N40QMKGCBHA0', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY9A9KVH9TKHBPDG2KF', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY9ZYW9F0RC6Q61CFK5', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KY9W9YE1HJH9WYE554G', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYA6F8KKZ0RVTETYAJC', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYABKS63AEVHEKHKTRM', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYASJ359JFW0QMTR1ZD', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYA30KXTTAT15G1J2VB', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYBGG8CWE9NE94YBAVP', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYBHNSMRV3R5YD2VC72', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYB3X7E2HHCWVQAADGB', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYBGCD7QFM3XAFGM745', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYCQYP1X9HNR9TZ10F3', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JX0A3KYC7Z4Z0GCYW2R3X2S3', '2025-06-05 15:07:15.788+00', '2025-06-05 15:07:15.788+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JWY4FNYHTJHWYA6M0VTC0VN5', '2025-06-04 18:50:30.737+00', '2025-06-07 12:20:23.862+00', '2025-06-07 12:20:23.862+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9EAQSA0E63N9WEARFTSFTE', '2025-06-21 14:29:55.114+00', '2025-06-21 15:28:03.532+00', '2025-06-21 15:28:03.531+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9EAQSAGAX14MBSRQDKC7R1', '2025-06-21 14:29:55.115+00', '2025-06-21 15:28:10.722+00', '2025-06-21 15:28:10.722+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9EAQSA1F4DESJ27H3TYXC4', '2025-06-21 14:29:55.115+00', '2025-06-21 15:28:17.841+00', '2025-06-21 15:28:17.84+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9J88GC3JZCMEA245JE7X5D', '2025-06-21 15:38:28.236+00', '2025-06-21 16:04:47.643+00', '2025-06-21 16:04:47.643+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY4CQ911H9KZAJ2789XDB4J8', '2025-06-19 15:25:36.673+00', '2025-06-21 17:51:05.717+00', '2025-06-21 17:51:05.717+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9PHVPQ3MBG4HAHK67CD5WR', '2025-06-21 16:53:37.111+00', '2025-06-21 21:35:08.629+00', '2025-06-21 21:35:08.628+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA7N320D34XXGDG6PKBSN48', '2025-06-21 21:52:28.736+00', '2025-06-21 22:00:05.009+00', '2025-06-21 22:00:05.009+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA7N320FTR944MEGXYK4QG9', '2025-06-21 21:52:28.736+00', '2025-06-21 22:00:16.107+00', '2025-06-21 22:00:16.107+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA7N320FH1EKBZFGKG9N53D', '2025-06-21 21:52:28.736+00', '2025-06-21 22:00:19.668+00', '2025-06-21 22:00:19.667+00');
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZA8D7WXZS6CYB43A43', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZA7ZGZDQCQRMBE0MY8', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZAN77D2SYC762NRN50', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZBVG3NNPC0DCPJXPTS', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZC0S2WGTFZ2P3DTZEG', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZC99PK6XBA5BKA47WA', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZDM5EM5X65SW5D9NSA', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZE4VQ46ZNJCYKW64EJ', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZE7C6QHC9DQRP3SG7W', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZFKY52Z35SA3JZ9J8K', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZFD24313S8ZQ0T2HEE', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZFGXRRPEZ39Z9Y0CF7', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZFK7R336QEYF3YJ52H', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZGTM5B8SMTHAY8G4GJ', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA8DVZGSARSVZHJ6AXSMTNN', '2025-06-21 22:06:00.688+00', '2025-06-21 22:06:00.688+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYAATZ0495EQTMVEEF35NFSN', '2025-06-21 22:48:06.917+00', '2025-06-21 22:48:06.917+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RHMDNS93D7N5321YENDKC', '2025-06-21 17:28:26.805+00', '2025-06-21 17:28:26.805+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RJY30BKGP2MAQJ0RMSYZN', '2025-06-21 17:29:09.472+00', '2025-06-21 17:29:09.472+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RKVZG227JEN8V89NQXSX6', '2025-06-21 17:29:40.08+00', '2025-06-21 17:29:40.08+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RMP0A77HKJ29X01VPYW5P', '2025-06-21 17:30:06.73+00', '2025-06-21 17:30:06.73+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RNEMQB4KNV7QCPX9Z8Q4V', '2025-06-21 17:30:31.959+00', '2025-06-21 17:30:31.959+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RP6JPTSVX05DZVPR1K6N3', '2025-06-21 17:30:56.47+00', '2025-06-21 17:30:56.47+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RPVW2Z3E0QRFNWEW7CY9K', '2025-06-21 17:31:18.274+00', '2025-06-21 17:31:18.274+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RQT8FTYWJMQMJ3DV4VBN1', '2025-06-21 17:31:49.391+00', '2025-06-21 17:31:49.391+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JY9RSH81564WPAC0H9Z8FTMW', '2025-06-21 17:32:45.698+00', '2025-06-21 17:32:45.698+00', NULL);
INSERT INTO public.price_set (id, created_at, updated_at, deleted_at) VALUES ('pset_01JYA6P1M33H7WVAYQT4SMG4VZ', '2025-06-21 21:35:31.46+00', '2025-06-21 21:35:31.46+00', NULL);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JWY4FNVVT9DP6FY5WFJBCCP5', 'sfaf', 'afa', 'afa', 'af', 'f', 'published', 'http://minio:9000/medusa-media/download (1)-01JWY4FNTX32M3AS1J6XR7R4N5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', NULL, '2025-06-04 18:50:30.658+00', '2025-06-07 12:20:23.847+00', '2025-06-07 12:20:23.846+00', NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'Medusa T-Shirt', 't-shirt', NULL, 'Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.', 'f', 'published', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JY49023S8CTPZ7ZD07A6FA7F', NULL, 't', NULL, '2025-06-05 15:07:15.633+00', '2025-06-19 14:51:06.919+00', NULL, NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'Medusa Shorts', 'shorts', NULL, 'Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.', 'f', 'published', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JY49023S8CTPZ7ZD07A6FA7F', NULL, 't', NULL, '2025-06-05 15:07:15.633+00', '2025-06-19 14:51:06.92+00', NULL, NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'The Quencher H2.0 Flowstate(TM) Tumbler', 'tumbler', 'tumbler', 'Introducing the iconic Quencher, now with the leak proof Pro Tour Flip Straw lid. The 40-ounce Quencher Pro Tour Flip Straw Tumbler makes hydration simple — flip up the built-in straw to sip, then snap it shut when you’re done.', 'f', 'published', 'http://localhost:9002/medusa-media/IMG_3698-01JY5D42TCFZ11FQ4XCMCJQ5FW.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JY49023S8CTPZ7ZD07A6FA7F', NULL, 't', NULL, '2025-06-19 15:25:36.563+00', '2025-06-21 17:51:05.687+00', '2025-06-21 17:51:05.687+00', NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JYA7N305WXX7XTK350A5VP2F', 'Lynn’s HydroFuel', 'lynns-hydrofuel', '40oz | Double Wall Stainless Steel Tumbler.', 'Stay refreshed wherever you go with our 20oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.\n', 'f', 'draft', 'http://localhost:9002/medusa-media/1ceb8d5b-8a7c-4f44-93a8-f0c7eb1899d7-01JYA7N2Z3JMS463P7SYVKDMYS.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JYA7P5Y3AF8VGSYZVCV0F1BD', NULL, 't', NULL, '2025-06-21 21:52:28.679+00', '2025-06-21 22:01:43.892+00', '2025-06-21 22:01:43.892+00', NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'Lynn’s HydroFuel', 'lynns-hydrofuel', '40oz | Double Wall Stainless Steel Tumbler', 'Stay refreshed wherever you go with our 20oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', 'f', 'published', 'http://localhost:9002/medusa-media/IMG_3989-01JYCMG3ZZVQ1P2816NKGKX25M.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JYA7P5Y3AF8VGSYZVCV0F1BD', NULL, 'f', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL, NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'Medusa Sweatshirt', 'sweatshirt', NULL, 'Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.', 'f', 'published', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JY49023S8CTPZ7ZD07A6FA7F', NULL, 't', NULL, '2025-06-05 15:07:15.633+00', '2025-06-20 01:03:46.624+00', NULL, NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'Medusa Sweatpants', 'sweatpants', NULL, 'Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.', 'f', 'published', 'https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pcol_01JY49023S8CTPZ7ZD07A6FA7F', NULL, 't', NULL, '2025-06-05 15:07:15.633+00', '2025-06-20 01:03:46.624+00', NULL, NULL);
INSERT INTO public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) VALUES ('prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'David Bryant Tumbler', 'david-bryant-tumbler', '20oz | Double Wall Stainless Steel Tumbler', 'Stay refreshed wherever you go with our 20 oz double wall stainless steel tumbler. Designed with vacuum insulation, it keeps drinks hot for up to 12 hours and cold for 12-24 hours, so your beverage is always just the right temperature. BPA-free and built for durability, this tumbler is perfect for the office, gym, travel, or everyday use on the go. Sleek, functional, and reliable — hydration just got an upgrade.', 'f', 'published', NULL, NULL, NULL, NULL, NULL, 'us', NULL, NULL, NULL, 'pcol_01JY9DDCKQBPN2E1X9X05E1VPP', NULL, 'f', NULL, '2025-06-21 14:29:54.999+00', '2025-06-21 14:29:54.999+00', NULL, NULL);


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) VALUES ('pcat_01JX0A3KRSRB3N9XW79QXC7AN0', 'Shirts', 'Cozy and stylish, this sweatshirt is crafted for ultimate comfort with a soft, breathable fabric.', 'shirts', 'pcat_01JX0A3KRSRB3N9XW79QXC7AN0', 't', 'f', '0', NULL, '2025-06-05 15:07:15.61+00', '2025-06-17 17:06:00.416+00', NULL, NULL);
INSERT INTO public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) VALUES ('pcat_01JX0A3KRT30F9PEJFY3HXBP76', 'Pants', 'Cozy and stylish, this sweatshirt is crafted for ultimate comfort with a soft, breathable fabric.', 'pants', 'pcat_01JX0A3KRT30F9PEJFY3HXBP76', 't', 'f', '1', NULL, '2025-06-05 15:07:15.61+00', '2025-06-17 17:07:17.238+00', NULL, NULL);
INSERT INTO public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) VALUES ('pcat_01JX0A3KRS3SH2ESGV7PWZT5B8', 'Sweatshirts', 'Cozy and stylish, this sweatshirt is crafted for ultimate comfort with a soft, breathable fabric.', 'sweatshirts', 'pcat_01JX0A3KRS3SH2ESGV7PWZT5B8', 't', 'f', '3', NULL, '2025-06-05 15:07:15.61+00', '2025-06-17 17:07:19.047+00', NULL, NULL);
INSERT INTO public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) VALUES ('pcat_01JX0A3KRTDJYJ2BFR2JRYR785', 'Merch', 'Cozy and stylish, this sweatshirt is crafted for ultimate comfort with a soft, breathable fabric.', 'merch', 'pcat_01JX0A3KRTDJYJ2BFR2JRYR785', 't', 'f', '2', NULL, '2025-06-05 15:07:15.61+00', '2025-06-17 17:07:19.047+00', NULL, NULL);
INSERT INTO public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) VALUES ('pcat_01JY49D8FD040WV1Y7PVS9P8MD', 'Drinkwares', 'Cups, mugs, bottles, and glassware for every beverage and occasion. From insulated travel tumblers to elegant wine glasses, find the perfect vessel to elevate your drinking experience.', 'drinkwares', 'pcat_01JY49D8FD040WV1Y7PVS9P8MD', 't', 'f', '4', NULL, '2025-06-19 14:27:42.702+00', '2025-06-21 14:10:21.307+00', NULL, NULL);


--
-- Data for Name: product_category_product; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'pcat_01JX0A3KRSRB3N9XW79QXC7AN0');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'pcat_01JX0A3KRS3SH2ESGV7PWZT5B8');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'pcat_01JX0A3KRT30F9PEJFY3HXBP76');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'pcat_01JX0A3KRTDJYJ2BFR2JRYR785');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'pcat_01JX0A3KRS3SH2ESGV7PWZT5B8');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'pcat_01JY49D8FD040WV1Y7PVS9P8MD');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'pcat_01JY49D8FD040WV1Y7PVS9P8MD');
INSERT INTO public.product_category_product (product_id, product_category_id) VALUES ('prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'pcat_01JY49D8FD040WV1Y7PVS9P8MD');


--
-- Data for Name: product_collection; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JY49023S8CTPZ7ZD07A6FA7F', 'Featured Products', 'featured-products', NULL, '2025-06-19 14:20:30.199444+00', '2025-06-19 14:20:30.199444+00', NULL);
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JY490PFJQB9EDP2HMB1KRKD1', 'Sales', 'sales-products', NULL, '2025-06-19 14:20:51.058147+00', '2025-06-19 14:20:51.058147+00', NULL);
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JXZVCJ7PY0EADQTHRRQX0886', 'sfa', 'sfa', NULL, '2025-06-17 21:05:42.132513+00', '2025-06-19 14:21:07.997+00', '2025-06-19 14:21:07.996+00');
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JY4MFBZ649FE73C2FZCHDZKQ', 'New Arrivals', 'new-arrivals', NULL, '2025-06-19 17:41:06.147586+00', '2025-06-19 17:41:06.147586+00', NULL);
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JY4MGGQDQ2F0DVF3R6NVCB5V', 'Related products', 'related-products', NULL, '2025-06-19 17:41:43.789117+00', '2025-06-19 17:41:43.789117+00', NULL);
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JY9DDCKQBPN2E1X9X05E1VPP', 'David Bryant collection', 'david-bryant-collection', NULL, '2025-06-21 14:13:53.394014+00', '2025-06-21 14:13:53.394014+00', NULL);
INSERT INTO public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) VALUES ('pcol_01JYA7P5Y3AF8VGSYZVCV0F1BD', 'Lynn’s Collection', 'lynn’s-collection', NULL, '2025-06-21 21:53:04.450614+00', '2025-06-21 21:53:04.450614+00', NULL);


--
-- Data for Name: product_option; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JX0A3KSC7GD4Q9TWGWXFP1FQ', 'Size', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', NULL, '2025-06-05 15:07:15.633+00', '2025-06-05 15:07:15.633+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JX0A3KSD9PG9X6BKMRRZQK6E', 'Color', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JX0A3KSFE4BAGJG1ZRH8TH20', 'Size', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JX0A3KSF1GMQV41JTST85W62', 'Size', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JX0A3KSGBXVNZYQAJMBKR348', 'Size', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JWY4FNVY39SE6BXY6SYYGHMV', 'Default option', 'prod_01JWY4FNVVT9DP6FY5WFJBCCP5', NULL, '2025-06-04 18:50:30.658+00', '2025-06-07 12:20:23.857+00', '2025-06-07 12:20:23.846+00');
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JY9EAQNP5B246HVV3M0952Q9', 'Color', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', NULL, '2025-06-21 14:29:55+00', '2025-06-21 15:30:26.256+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', 'Color', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JY4CQ8XJ0PYJ2D1RT488YHBJ', 'Default option', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5', NULL, '2025-06-19 15:25:36.563+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00');
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JYA7N306Z1MRCMKEJFPH7T27', 'Color', 'prod_01JYA7N305WXX7XTK350A5VP2F', NULL, '2025-06-21 21:52:28.679+00', '2025-06-21 22:01:43.9+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JYA82HHB3RMMZ4R6PC731M2X', 'Color', 'prod_01JYA7N305WXX7XTK350A5VP2F', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.9+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) VALUES ('opt_01JYA8DVWBT3370C50H960GDXY', 'Color', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);


--
-- Data for Name: product_option_value; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSCFDP3SR8XJHCS7AEH', 'S', 'opt_01JX0A3KSC7GD4Q9TWGWXFP1FQ', NULL, '2025-06-05 15:07:15.633+00', '2025-06-05 15:07:15.633+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSC7KWWMBBA38R742R1', 'M', 'opt_01JX0A3KSC7GD4Q9TWGWXFP1FQ', NULL, '2025-06-05 15:07:15.633+00', '2025-06-05 15:07:15.633+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSCGNXC561YVZ3FY7EJ', 'L', 'opt_01JX0A3KSC7GD4Q9TWGWXFP1FQ', NULL, '2025-06-05 15:07:15.633+00', '2025-06-05 15:07:15.633+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSCBY26DF5SRN4FYPDA', 'XL', 'opt_01JX0A3KSC7GD4Q9TWGWXFP1FQ', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSDRZK7NPQS71G6PP2Y', 'Black', 'opt_01JX0A3KSD9PG9X6BKMRRZQK6E', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSDHNS0E1T4G7Z8QV0Y', 'White', 'opt_01JX0A3KSD9PG9X6BKMRRZQK6E', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSEXBK9GC0APWZVAYCW', 'S', 'opt_01JX0A3KSFE4BAGJG1ZRH8TH20', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSEM10ZXKXADXD117RY', 'M', 'opt_01JX0A3KSFE4BAGJG1ZRH8TH20', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSEQVWFDV4X989HK01T', 'L', 'opt_01JX0A3KSFE4BAGJG1ZRH8TH20', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSFQDBMHYPCV240NQ6N', 'XL', 'opt_01JX0A3KSFE4BAGJG1ZRH8TH20', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSFCQ0B1EBDFGG3E93B', 'S', 'opt_01JX0A3KSF1GMQV41JTST85W62', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSFGT34GVBSKZ1C6Z54', 'M', 'opt_01JX0A3KSF1GMQV41JTST85W62', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSFZEMYJP4AQE8KZ0DT', 'L', 'opt_01JX0A3KSF1GMQV41JTST85W62', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSFQ35M7VVPQKKWJ50H', 'XL', 'opt_01JX0A3KSF1GMQV41JTST85W62', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSG5F4TWC4665J3ABVR', 'S', 'opt_01JX0A3KSGBXVNZYQAJMBKR348', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSGG16PQ0Q5KQXY8WGB', 'M', 'opt_01JX0A3KSGBXVNZYQAJMBKR348', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSGXK911XDKTM1P3CX4', 'L', 'opt_01JX0A3KSGBXVNZYQAJMBKR348', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JX0A3KSG1K5BKSBMDPJ077EX', 'XL', 'opt_01JX0A3KSGBXVNZYQAJMBKR348', NULL, '2025-06-05 15:07:15.634+00', '2025-06-05 15:07:15.634+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JWY4FNVYWWNYFEDGNBBR1M0A', 'Default option value', 'opt_01JWY4FNVY39SE6BXY6SYYGHMV', NULL, '2025-06-04 18:50:30.658+00', '2025-06-07 12:20:23.866+00', '2025-06-07 12:20:23.846+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY4CQ8XJDYYZ6SVCAHKRQ6BX', 'Default option value', 'opt_01JY4CQ8XJ0PYJ2D1RT488YHBJ', NULL, '2025-06-19 15:25:36.563+00', '2025-06-21 17:51:05.703+00', '2025-06-21 17:51:05.687+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9EAQNN934HMGMYP6R5BY57', 'Red', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 14:29:55+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9EAQNNP9C46V6SC96ZVZAX', 'Royal blue', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 14:29:55+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV255PR08M2CWS97N8W2', 'Indigo', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV25XBGB9AB1X6S5RYT6', 'Olive green', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV2506MAPN5F8M6GDQSV', 'Dark green', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV25HQFWXSN89HDTWSW2', 'Navy blue', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV26MF6FP9851CQKGHSX', 'Orange', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV26S2YBCDCBBM48KC5S', 'Fuchsia pink', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV26H07SNVA894KTDCBC', 'Gray', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9HGV26ECA4QB6DJST8JW11', 'Black', 'opt_01JY9EAQNP5B246HVV3M0952Q9', NULL, '2025-06-21 15:25:40.795658+00', '2025-06-21 15:30:26.26+00', '2025-06-21 15:30:26.256+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5WE4KS6NJARFHF0FKS', 'Indigo', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5XX24J9AFJTA39F2HW', 'Olive green', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5XC627JYSBV6YYPPPT', 'Dark green', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5XPS7ZQZCBVM9NMT8Y', 'Navy blue', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5XVEXKDVCNVW2246SR', 'Royal blue', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5XMQM3E3Z7H0Q83HDE', 'Red', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5X6EEEF155CVZM7VKY', 'Orange', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5X2XVEBDQHYK2727R0', 'Fuchsia pink', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5Y1HTR9ABXF955TNYJ', 'Gray', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JY9J1P5YY23JPDSWYP8QTDNK', 'Black', 'opt_01JY9J1P5Y8HSQ6Y1SYQP72RP0', NULL, '2025-06-21 15:34:52.862+00', '2025-06-21 15:34:52.862+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA7N306GQB60NRZ00DKW4YP', 'Red', 'opt_01JYA7N306Z1MRCMKEJFPH7T27', NULL, '2025-06-21 21:52:28.679+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA7N306EMY4Q43201YGCFB6', 'Blue', 'opt_01JYA7N306Z1MRCMKEJFPH7T27', NULL, '2025-06-21 21:52:28.679+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA7N3065C66KJHH4WZD5DJG', 'Green', 'opt_01JYA7N306Z1MRCMKEJFPH7T27', NULL, '2025-06-21 21:52:28.679+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHAXV11B4NEQH5BW0BP', 'White', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHB4813HRV14WK1KEMP', 'Peach', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBV4ZAWPCJJ5FANPY5', 'Black', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBDXAV1TP7RCTR9B5R', 'Charcoal', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBNYJVBPE4D0Q6H0BM', 'Stormy sea', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBY1ZG0Y8MZGN85FZD', 'Rusty red', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBAPY2VJ8D34RYFQ65', 'Klein blue', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBZVV4RPP9V6CV3747', 'Red', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBZ0S6EQPRNXG9RT7H', 'Sakura', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBH9X0RQB8HFPKYWSC', 'Purple', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBT6TB1R38JPZRDP20', 'Barbie pink', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBWQXHKRHYHMKTJT9H', 'Light blue', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHBCKB01WSG26X67VPQ', 'Bay leaf', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHB9MG6K3Q9G4416FZY', 'Lime green', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA82HHB5HZRCGAV16X1M53H', 'Lake green', 'opt_01JYA82HHB3RMMZ4R6PC731M2X', NULL, '2025-06-21 21:59:49.548+00', '2025-06-21 22:01:43.91+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVW96VVKN1HS1ZED3QPB', 'White', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVW9M57972KJR5RCT98K', 'Peach', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVW91YVBP6XMKZQH32W0', 'Black', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAPF5NFWPHNGSNMKKM', 'Charcoal', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAEE2BBZXV4DD0925R', 'Stormy sea', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAFGBB5K2FDSXVMM34', 'Rusty red', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAVPEZAEHEXBY3JY5A', 'Klein blue', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWATY9GW03VK3KR0Z8K', 'Red', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAFZCC58DZJ0H2ZMNW', 'Sakura', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWA49B1VR97GHNYPABQ', 'Purple', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWACTKSQFM0QSBRE0XK', 'Barbie pink', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWAHNZD32XW3T5J875E', 'Light blue', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWBNN1AZR0CFYBPXRHQ', 'Bay leaf', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWB4W1DNG2FS7YTWA60', 'Lime green', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);
INSERT INTO public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) VALUES ('optval_01JYA8DVWBG3AAMQ9H4CP12Q86', 'Lake green', 'opt_01JYA8DVWBT3370C50H960GDXY', NULL, '2025-06-21 22:06:00.588+00', '2025-06-21 22:06:00.588+00', NULL);


--
-- Data for Name: product_sales_channel; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JX0A3KT65TPXHJFGSMSXFS6V', '2025-06-05 15:07:15.653355+00', '2025-06-05 15:07:15.653355+00', NULL);
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JX0A3KT6AE3YGAV1PRNWYG2R', '2025-06-05 15:07:15.653355+00', '2025-06-05 15:07:15.653355+00', NULL);
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JX0A3KT731MFM4PNHWQ5QN2C', '2025-06-05 15:07:15.653355+00', '2025-06-05 15:07:15.653355+00', NULL);
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JX0A3KT7Z4B1J7AV1ATT128Q', '2025-06-05 15:07:15.653355+00', '2025-06-05 15:07:15.653355+00', NULL);
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JWY4FNVVT9DP6FY5WFJBCCP5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JWY4FNWVN5YZKJJFN8K806R9', '2025-06-04 18:50:30.682445+00', '2025-06-07 12:20:23.844+00', '2025-06-07 12:20:23.843+00');
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JY9EAQPYZJN2RVGZ5JBVF50M', '2025-06-21 14:29:55.035516+00', '2025-06-21 14:29:55.035516+00', NULL);
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JY4CQ8YD3RWAW7KZDJZFNHT7', '2025-06-19 15:25:36.588157+00', '2025-06-21 17:51:05.706+00', '2025-06-21 17:51:05.705+00');
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JYA7N305WXX7XTK350A5VP2F', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JYA7N30P2ERDF79PM8JX0C40', '2025-06-21 21:52:28.69277+00', '2025-06-21 22:01:43.894+00', '2025-06-21 22:01:43.893+00');
INSERT INTO public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'prodsc_01JYA8DVWV8H6KXVHXH43Z8YMB', '2025-06-21 22:06:00.602459+00', '2025-06-21 22:06:00.602459+00', NULL);


--
-- Data for Name: product_shipping_profile; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSADE2CYBNBHAZX75ZF', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JX0A3KTMCDPNFXHG9TFMAT86', '2025-06-05 15:07:15.668018+00', '2025-06-05 15:07:15.668018+00', NULL);
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBNHJQBXZMED5D3PA8', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JX0A3KTNR6AV3EYVJHDX44WZ', '2025-06-05 15:07:15.668018+00', '2025-06-05 15:07:15.668018+00', NULL);
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBM4X6WG5DFT37ATSS', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JX0A3KTNGDDD08R3FJ910BJD', '2025-06-05 15:07:15.668018+00', '2025-06-05 15:07:15.668018+00', NULL);
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JX0A3KSBCKBA88QYWXF0H0GB', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JX0A3KTNS4NW7ZQ8EDTYDEWG', '2025-06-05 15:07:15.668018+00', '2025-06-05 15:07:15.668018+00', NULL);
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JY9J9M9GVSQCK5VEPH2QFTX1', '2025-06-21 15:39:13.070745+00', '2025-06-21 15:39:13.070745+00', NULL);
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JY4CQ8YWW0GRM9FS6DEF9YC0', '2025-06-19 15:25:36.603912+00', '2025-06-21 17:51:05.711+00', '2025-06-21 17:51:05.711+00');
INSERT INTO public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) VALUES ('prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'prodsp_01JYA8DVX3PQQWFBMV7P71KZF6', '2025-06-21 22:06:00.610498+00', '2025-06-21 22:06:00.610498+00', NULL);


--
-- Data for Name: product_tag; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_tag (id, value, metadata, created_at, updated_at, deleted_at) VALUES ('ptag_01JY5CB0AGBC0Y6E0SH4BT8YMT', 'drinkware', NULL, '2025-06-20 00:38:08.977+00', '2025-06-20 00:38:08.977+00', NULL);


--
-- Data for Name: product_tags; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_tags (product_id, product_tag_id) VALUES ('prod_01JY4CQ8XH3EJSHBDWHR662XZ5', 'ptag_01JY5CB0AGBC0Y6E0SH4BT8YMT');
INSERT INTO public.product_tags (product_id, product_tag_id) VALUES ('prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', 'ptag_01JY5CB0AGBC0Y6E0SH4BT8YMT');
INSERT INTO public.product_tags (product_id, product_tag_id) VALUES ('prod_01JYA8DVW90ATKKJ3WYY0XYQEV', 'ptag_01JY5CB0AGBC0Y6E0SH4BT8YMT');


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_type (id, value, metadata, created_at, updated_at, deleted_at) VALUES ('ptyp_01JYAB0WFH2AV12Y0KKT5G04JW', 'test', NULL, '2025-06-21 22:51:20.946+00', '2025-06-21 22:51:20.946+00', NULL);


--
-- Data for Name: product_variant; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'S / Black', 'SHIRT-S-BLACK', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.698+00', '2025-06-05 15:07:15.698+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGJKAPBX931H53XFAS', 'S / White', 'SHIRT-S-WHITE', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'M / Black', 'SHIRT-M-BLACK', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGDKX8G3ZCHCA9E6AP', 'M / White', 'SHIRT-M-WHITE', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGHX1K8469E7SEG4TC', 'L / Black', 'SHIRT-L-BLACK', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGB8QTWDC772326R1P', 'L / White', 'SHIRT-L-WHITE', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGTT34GVCKHVAJ2RMZ', 'XL / Black', 'SHIRT-XL-BLACK', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGT0T9ZXHJG3VGVFB4', 'XL / White', 'SHIRT-XL-WHITE', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSADE2CYBNBHAZX75ZF', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGNG2NRZSKSWM860X5', 'S', 'SWEATSHIRT-S', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'M', 'SWEATSHIRT-M', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHZDZEBZ2PVHD40SB1', 'L', 'SWEATSHIRT-L', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHR8FA4KEZM4A10YB7', 'XL', 'SWEATSHIRT-XL', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBNHJQBXZMED5D3PA8', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH76Q7WB29X2CAHNGZ', 'S', 'SWEATPANTS-S', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'M', 'SWEATPANTS-M', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHT8HJ5D626EBPMSES', 'L', 'SWEATPANTS-L', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH8JX6R9NAGA0B63Q5', 'XL', 'SWEATPANTS-XL', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBM4X6WG5DFT37ATSS', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH2TDAV5PTEPRY00AY', 'S', 'SHORTS-S', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'M', 'SHORTS-M', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHG6GVPZ0WR3671Q2D', 'L', 'SHORTS-L', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHAG2XZ5V8S6K95YR3', 'XL', 'SHORTS-XL', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JX0A3KSBCKBA88QYWXF0H0GB', '2025-06-05 15:07:15.699+00', '2025-06-05 15:07:15.699+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JWY4FNXN3F7NF793G888CXPW', 'Default variant', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JWY4FNVVT9DP6FY5WFJBCCP5', '2025-06-04 18:50:30.71+00', '2025-06-07 12:20:23.857+00', '2025-06-07 12:20:23.846+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRCMDRZPRTYSQJQF2TE', 'White', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 14:29:55.085+00', '2025-06-21 15:28:03.56+00', '2025-06-21 15:28:03.558+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRD0CPE8ASWH06TGENY', 'Red', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 14:29:55.085+00', '2025-06-21 15:28:10.743+00', '2025-06-21 15:28:10.743+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRDC7FQFV7REBX7AF41', 'Royal blue', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 14:29:55.085+00', '2025-06-21 15:28:17.862+00', '2025-06-21 15:28:17.862+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31A1K0TZJMG2KRY0NDJ', 'Red', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JYA7N305WXX7XTK350A5VP2F', '2025-06-21 21:52:28.715+00', '2025-06-21 22:01:43.899+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9J88F6G4JAKQ8C2AHSJXXC', 'Brynant D', 'SHORTS-S-GS', NULL, NULL, NULL, 'f', 't', NULL, 'us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 15:38:28.198+00', '2025-06-21 16:04:47.676+00', '2025-06-21 16:04:47.676+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31A2J49XXYM5EB4T7P8', 'Blue', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'prod_01JYA7N305WXX7XTK350A5VP2F', '2025-06-21 21:52:28.715+00', '2025-06-21 22:01:43.899+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'Default variant', 'LYN-DW-TUM', NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY4CQ8XH3EJSHBDWHR662XZ5', '2025-06-19 15:25:36.627+00', '2025-06-21 17:51:05.695+00', '2025-06-21 17:51:05.687+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9PHVNH9EVA85NW6DYMEVKK', 'Black', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 16:53:37.074+00', '2025-06-21 21:35:08.666+00', '2025-06-21 21:35:08.666+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31AN5KEDVXJHVHY0EFE', 'Green', NULL, NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'prod_01JYA7N305WXX7XTK350A5VP2F', '2025-06-21 21:52:28.715+00', '2025-06-21 22:01:43.899+00', '2025-06-21 22:01:43.892+00');
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0VW4XSYQZTJ6C9H4', 'White', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMYAPV35M6FY6EH48A', 'Peach', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMEKVH09TX4ZTNXBHD', 'Black', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMJC56MENVSMA1VP9R', 'Charcoal', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0G4KF2E708V91763', 'Stormy sea', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFKSFNGM8J1BJR037', 'Rusty red', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9N1DTTDBRT9QHHXT', 'Klein blue', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNKPNHM14461PAR38T', 'Red', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN531KXDC5J0E6AD4A', 'Sakura', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFY0B23JNKRTGBX2B', 'Purple', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9F55N56JBFM6MPTW', 'Barbie pink', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNXZHDGS51N4T1B84X', 'Light blue', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNEWW3JK7DFMMFTNKS', 'Bay leaf', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNSKZTN96KFJZFHY5N', 'Lime green', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RHMCCS73YXZ5V959F8JBQ', 'Indigo', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:28:26.764+00', '2025-06-21 17:28:26.764+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RJY1Z3MFKGR7KHZJGRNFR', 'Olive green', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:29:09.439+00', '2025-06-21 17:29:09.439+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RKVY9SCVXTKYVNZMSNNSZ', 'Dark green', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:29:40.042+00', '2025-06-21 17:29:40.042+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN5FBTDKMRED13V6ZH', 'Lake green', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', 'prod_01JYA8DVW90ATKKJ3WYY0XYQEV', '2025-06-21 22:06:00.63+00', '2025-06-21 22:06:00.63+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RMNZ50K7FVTK4ETXKH6F0', 'Navy blue', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:30:06.693+00', '2025-06-21 17:30:06.693+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RNEKP75SPD0DCQTCSGJ0E', 'Royal blue', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:30:31.926+00', '2025-06-21 17:30:31.926+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RP6HY7WK0JVHV1SN8PPXS', 'Fuchsia pink', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:30:56.447+00', '2025-06-21 17:30:56.447+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RPVV63G11BK4KPAH9D4VE', 'Red', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:31:18.247+00', '2025-06-21 17:31:18.247+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RQT7QFV055A1ERPEKTEC0', 'Orange', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:31:49.367+00', '2025-06-21 17:31:49.367+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RSH6SD8QXGGEW6KT5FYN2', 'Gray', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 17:32:45.657+00', '2025-06-21 17:32:45.657+00', NULL);
INSERT INTO public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA6P1K8K27ESA38BW3ZVCMC', 'Black', NULL, NULL, NULL, NULL, 'f', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'prod_01JY9EAQNMHAJ5TWA5H6J0GNYR', '2025-06-21 21:35:31.433+00', '2025-06-21 21:35:31.433+00', NULL);


--
-- Data for Name: product_variant_inventory_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'iitem_01JX0A3KWNJRC8YZYSA0MW73VT', 'pvitem_01JX0A3KXK1QE4XNRJ0M65SS24', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGJKAPBX931H53XFAS', 'iitem_01JX0A3KWN2XA0E30F4324MC67', 'pvitem_01JX0A3KXMH8RWQF8BNS1BN5ZB', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', 'pvitem_01JX0A3KXMWMASDH8NYJM1G065', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGDKX8G3ZCHCA9E6AP', 'iitem_01JX0A3KWN2WBJT298RVEBXE05', 'pvitem_01JX0A3KXM5KDVM5Z5RQA3A6P2', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGHX1K8469E7SEG4TC', 'iitem_01JX0A3KWNH0NSC47RHZWDPDD8', 'pvitem_01JX0A3KXM2Q8WHA80FVM5T4GF', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGB8QTWDC772326R1P', 'iitem_01JX0A3KWNS61VQ3DZ8YH411FJ', 'pvitem_01JX0A3KXN242RBKWYR4MTD3M6', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGTT34GVCKHVAJ2RMZ', 'iitem_01JX0A3KWNF5RBK3CGQEVZDGKT', 'pvitem_01JX0A3KXNGWBFN0NS3GEGS62D', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGT0T9ZXHJG3VGVFB4', 'iitem_01JX0A3KWNTS2EGSGA9Y32KRV2', 'pvitem_01JX0A3KXNS4Y2VKYCQR584JZ9', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGNG2NRZSKSWM860X5', 'iitem_01JX0A3KWNSQMERPGQN690JTQT', 'pvitem_01JX0A3KXNXWN34XVKDQBD829M', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'iitem_01JX0A3KWNMBHP7T33HW8JRMDS', 'pvitem_01JX0A3KXNA8QCPD51KZQZ0V9Q', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHZDZEBZ2PVHD40SB1', 'iitem_01JX0A3KWPQ84WKPA1VRJGW4TB', 'pvitem_01JX0A3KXPX1RRCQBGX6BE371X', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHR8FA4KEZM4A10YB7', 'iitem_01JX0A3KWP8NYG254H9ZPKZR7W', 'pvitem_01JX0A3KXPCWCMBSC29MZP1J7G', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH76Q7WB29X2CAHNGZ', 'iitem_01JX0A3KWPKWAXZVEWB9BE6BG5', 'pvitem_01JX0A3KXPHQ2VNEVGHPRPZ5KA', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'iitem_01JX0A3KWPEH5C400Z4NFQ9WPZ', 'pvitem_01JX0A3KXPR599H5AG7YHAB2E4', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHT8HJ5D626EBPMSES', 'iitem_01JX0A3KWPSYXX4ZHX6EECE58T', 'pvitem_01JX0A3KXP4V4H3MM9J5V5H400', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH8JX6R9NAGA0B63Q5', 'iitem_01JX0A3KWPD6F9CKSM0VP6K73B', 'pvitem_01JX0A3KXPRGBFPQ3AMNAJP8W9', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH2TDAV5PTEPRY00AY', 'iitem_01JX0A3KWP4RH1C6PJEPTVEH0T', 'pvitem_01JX0A3KXPDP453DGYCR4BZ0ZJ', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'iitem_01JX0A3KWPRPEG8EXMK34BASWW', 'pvitem_01JX0A3KXQ9Y9PTNTJMKGFTQ3N', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHG6GVPZ0WR3671Q2D', 'iitem_01JX0A3KWPANKSKJ819ZNAETMY', 'pvitem_01JX0A3KXQFC50366T63JGFER2', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHAG2XZ5V8S6K95YR3', 'iitem_01JX0A3KWPDY1D9SW3ZDB70M1A', 'pvitem_01JX0A3KXQQFPZZC8A2GAX3M5H', '1', '2025-06-05 15:07:15.763362+00', '2025-06-05 15:07:15.763362+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9J88F6G4JAKQ8C2AHSJXXC', 'iitem_01JY9J88FTEC5XDEH7WPJVA8RM', 'pvitem_01JY9J88G3NFST9TWN142EAHJB', '1', '2025-06-21 15:38:28.227436+00', '2025-06-21 16:04:47.623+00', '2025-06-21 16:04:47.623+00');
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RHMCCS73YXZ5V959F8JBQ', 'iitem_01JY9RHMD2BTEHS4WM60CPSA26', 'pvitem_01JY9RHMDE3TGFPWJWYXNER0JE', '1', '2025-06-21 17:28:26.797973+00', '2025-06-21 17:28:26.797973+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RJY1Z3MFKGR7KHZJGRNFR', 'iitem_01JY9RJY2GQT4ZH6WGEZS3F2VY', 'pvitem_01JY9RJY2RK5TQ7D8PRZAX6GEF', '1', '2025-06-21 17:29:09.464681+00', '2025-06-21 17:29:09.464681+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RKVY9SCVXTKYVNZMSNNSZ', 'iitem_01JY9RKVYYNE2FW6FBKJPNCSDH', 'pvitem_01JY9RKVZ9WRTX8T3WD8H6EYSR', '1', '2025-06-21 17:29:40.073305+00', '2025-06-21 17:29:40.073305+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RMNZ50K7FVTK4ETXKH6F0', 'iitem_01JY9RMNZS6WMN4PJZT0EVCKP9', 'pvitem_01JY9RMP032S74RV6WH67948C6', '1', '2025-06-21 17:30:06.722846+00', '2025-06-21 17:30:06.722846+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RNEKP75SPD0DCQTCSGJ0E', 'iitem_01JY9RNEM918WWMNG6RA9A3AQ6', 'pvitem_01JY9RNEMHKH8WQRNBA1KP4FTQ', '1', '2025-06-21 17:30:31.953346+00', '2025-06-21 17:30:31.953346+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RP6HY7WK0JVHV1SN8PPXS', 'iitem_01JY9RP6J8S3SZ5TR3VT313ZDN', 'pvitem_01JY9RP6JHEVH5TZRYFZP0DYMR', '1', '2025-06-21 17:30:56.465438+00', '2025-06-21 17:30:56.465438+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RPVV63G11BK4KPAH9D4VE', 'iitem_01JY9RPVVGYCEZFHXES80JMG56', 'pvitem_01JY9RPVVVW1TTD47MXEV144EH', '1', '2025-06-21 17:31:18.2672+00', '2025-06-21 17:31:18.2672+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RQT7QFV055A1ERPEKTEC0', 'iitem_01JY9RQT80SQFPXDR9WH5EB206', 'pvitem_01JY9RQT89JBPKW1H1T8YS5W8P', '1', '2025-06-21 17:31:49.385341+00', '2025-06-21 17:31:49.385341+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RSH6SD8QXGGEW6KT5FYN2', 'iitem_01JY9RSH7CRG4GQP8TRKGPNJK4', 'pvitem_01JY9RSH7PXSK4PCS8C8Y4QSC2', '1', '2025-06-21 17:32:45.686422+00', '2025-06-21 17:32:45.686422+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'iitem_01JY4CQ9026AWYJ7YCRKD9CKRS', 'pvitem_01JY5DD2WZ234CA410KCFT8XQN', '23', '2025-06-19 15:25:36.659768+00', '2025-06-21 17:41:51.228+00', '2025-06-21 17:41:51.228+00');
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JY9PHVNH9EVA85NW6DYMEVKK', 'iitem_01JY9PHVP2787N8MXME284VF8G', 'pvitem_01JY9QATMK9JST3P14SJ6882KF', '25', '2025-06-21 16:53:37.104262+00', '2025-06-21 21:35:08.61+00', '2025-06-21 21:35:08.61+00');
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA6P1K8K27ESA38BW3ZVCMC', 'iitem_01JYA6P1KMM3DYQVHV638BS15R', 'pvitem_01JYA6P1KYQ4NKREECVYAGY7H6', '1', '2025-06-21 21:35:31.454246+00', '2025-06-21 21:35:31.454246+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0VW4XSYQZTJ6C9H4', 'iitem_01JYA8DVY90F7BVY002DJFM25T', 'pvitem_01JYA8DVYZC5XT0AXP37S5T97S', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMYAPV35M6FY6EH48A', 'iitem_01JYA8DVYACTV3MPVF9PCXV5V0', 'pvitem_01JYA8DVYZ7SRH4GV7F8EBS950', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMEKVH09TX4ZTNXBHD', 'iitem_01JYA8DVYAP1W61G070F2041SK', 'pvitem_01JYA8DVYZWK4W3K25HMKS0EV4', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMJC56MENVSMA1VP9R', 'iitem_01JYA8DVYA6CYKBEMRKRGCC3HP', 'pvitem_01JYA8DVYZSGE9XA6DC93GA0RM', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0G4KF2E708V91763', 'iitem_01JYA8DVYAKP6GH8F6V1KP3SEN', 'pvitem_01JYA8DVYZYX7P7FAG1Q314YA8', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFKSFNGM8J1BJR037', 'iitem_01JYA8DVYAYVZ29VZS6B0TMP1V', 'pvitem_01JYA8DVYZ4T61DJFZR2K6VB2Y', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9N1DTTDBRT9QHHXT', 'iitem_01JYA8DVYARRTA65QPJH9ZK7H1', 'pvitem_01JYA8DVYZD8CFJ2FSCHFG5RK8', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNKPNHM14461PAR38T', 'iitem_01JYA8DVYA9NYZ3SPZNXK5XW9M', 'pvitem_01JYA8DVYZ9T378V42SW3TFG02', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN531KXDC5J0E6AD4A', 'iitem_01JYA8DVYAE4YV3V2F4XEWVXYG', 'pvitem_01JYA8DVYZBXCY6VPR1NR9PX0A', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFY0B23JNKRTGBX2B', 'iitem_01JYA8DVYBHRD38FF6HD72YV11', 'pvitem_01JYA8DVZ0PHMN4H61VBDABRHE', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9F55N56JBFM6MPTW', 'iitem_01JYA8DVYBNJ87HZ6741SV12MR', 'pvitem_01JYA8DVZ08ESCKBD6AW0M4HHE', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNXZHDGS51N4T1B84X', 'iitem_01JYA8DVYB2T7SMYN12T87M8VA', 'pvitem_01JYA8DVZ0CT3R1JQH5V2TKJ6A', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNEWW3JK7DFMMFTNKS', 'iitem_01JYA8DVYB60PSH6YTKDN0N33P', 'pvitem_01JYA8DVZ07X0J2S5Q0V2Q3WH2', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNSKZTN96KFJZFHY5N', 'iitem_01JYA8DVYB72SG15TV8SERSYWC', 'pvitem_01JYA8DVZ0VYAPJNEJHB1XKR17', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);
INSERT INTO public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN5FBTDKMRED13V6ZH', 'iitem_01JYA8DVYB0DSP904SYEGDS56A', 'pvitem_01JYA8DVZ0GCDCZBHPB64QKQ70', '1', '2025-06-21 22:06:00.670594+00', '2025-06-21 22:06:00.670594+00', NULL);


--
-- Data for Name: product_variant_option; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JWY4FNXN3F7NF793G888CXPW', 'optval_01JWY4FNVYWWNYFEDGNBBR1M0A');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'optval_01JX0A3KSCFDP3SR8XJHCS7AEH');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'optval_01JX0A3KSDRZK7NPQS71G6PP2Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGJKAPBX931H53XFAS', 'optval_01JX0A3KSCFDP3SR8XJHCS7AEH');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGJKAPBX931H53XFAS', 'optval_01JX0A3KSDHNS0E1T4G7Z8QV0Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'optval_01JX0A3KSC7KWWMBBA38R742R1');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'optval_01JX0A3KSDRZK7NPQS71G6PP2Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGDKX8G3ZCHCA9E6AP', 'optval_01JX0A3KSC7KWWMBBA38R742R1');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGDKX8G3ZCHCA9E6AP', 'optval_01JX0A3KSDHNS0E1T4G7Z8QV0Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGHX1K8469E7SEG4TC', 'optval_01JX0A3KSCGNXC561YVZ3FY7EJ');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGHX1K8469E7SEG4TC', 'optval_01JX0A3KSDRZK7NPQS71G6PP2Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGB8QTWDC772326R1P', 'optval_01JX0A3KSCGNXC561YVZ3FY7EJ');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGB8QTWDC772326R1P', 'optval_01JX0A3KSDHNS0E1T4G7Z8QV0Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGTT34GVCKHVAJ2RMZ', 'optval_01JX0A3KSCBY26DF5SRN4FYPDA');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGTT34GVCKHVAJ2RMZ', 'optval_01JX0A3KSDRZK7NPQS71G6PP2Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGT0T9ZXHJG3VGVFB4', 'optval_01JX0A3KSCBY26DF5SRN4FYPDA');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGT0T9ZXHJG3VGVFB4', 'optval_01JX0A3KSDHNS0E1T4G7Z8QV0Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGNG2NRZSKSWM860X5', 'optval_01JX0A3KSEXBK9GC0APWZVAYCW');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'optval_01JX0A3KSEM10ZXKXADXD117RY');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHZDZEBZ2PVHD40SB1', 'optval_01JX0A3KSEQVWFDV4X989HK01T');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHR8FA4KEZM4A10YB7', 'optval_01JX0A3KSFQDBMHYPCV240NQ6N');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVH76Q7WB29X2CAHNGZ', 'optval_01JX0A3KSFCQ0B1EBDFGG3E93B');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'optval_01JX0A3KSFGT34GVBSKZ1C6Z54');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHT8HJ5D626EBPMSES', 'optval_01JX0A3KSFZEMYJP4AQE8KZ0DT');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVH8JX6R9NAGA0B63Q5', 'optval_01JX0A3KSFQ35M7VVPQKKWJ50H');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVH2TDAV5PTEPRY00AY', 'optval_01JX0A3KSG5F4TWC4665J3ABVR');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'optval_01JX0A3KSGG16PQ0Q5KQXY8WGB');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHG6GVPZ0WR3671Q2D', 'optval_01JX0A3KSGXK911XDKTM1P3CX4');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JX0A3KVHAG2XZ5V8S6K95YR3', 'optval_01JX0A3KSG1K5BKSBMDPJ077EX');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'optval_01JY4CQ8XJDYYZ6SVCAHKRQ6BX');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9EAQRD0CPE8ASWH06TGENY', 'optval_01JY9EAQNN934HMGMYP6R5BY57');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9EAQRDC7FQFV7REBX7AF41', 'optval_01JY9EAQNNP9C46V6SC96ZVZAX');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9J88F6G4JAKQ8C2AHSJXXC', 'optval_01JY9J1P5XPS7ZQZCBVM9NMT8Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9PHVNH9EVA85NW6DYMEVKK', 'optval_01JY9J1P5YY23JPDSWYP8QTDNK');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RHMCCS73YXZ5V959F8JBQ', 'optval_01JY9J1P5WE4KS6NJARFHF0FKS');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RJY1Z3MFKGR7KHZJGRNFR', 'optval_01JY9J1P5XX24J9AFJTA39F2HW');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RKVY9SCVXTKYVNZMSNNSZ', 'optval_01JY9J1P5XC627JYSBV6YYPPPT');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RMNZ50K7FVTK4ETXKH6F0', 'optval_01JY9J1P5XPS7ZQZCBVM9NMT8Y');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RNEKP75SPD0DCQTCSGJ0E', 'optval_01JY9J1P5XVEXKDVCNVW2246SR');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RP6HY7WK0JVHV1SN8PPXS', 'optval_01JY9J1P5X2XVEBDQHYK2727R0');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RPVV63G11BK4KPAH9D4VE', 'optval_01JY9J1P5XMQM3E3Z7H0Q83HDE');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RQT7QFV055A1ERPEKTEC0', 'optval_01JY9J1P5X6EEEF155CVZM7VKY');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JY9RSH6SD8QXGGEW6KT5FYN2', 'optval_01JY9J1P5Y1HTR9ABXF955TNYJ');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA6P1K8K27ESA38BW3ZVCMC', 'optval_01JY9J1P5YY23JPDSWYP8QTDNK');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA7N31A1K0TZJMG2KRY0NDJ', 'optval_01JYA7N306GQB60NRZ00DKW4YP');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA7N31A2J49XXYM5EB4T7P8', 'optval_01JYA7N306EMY4Q43201YGCFB6');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA7N31AN5KEDVXJHVHY0EFE', 'optval_01JYA7N3065C66KJHH4WZD5DJG');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXM0VW4XSYQZTJ6C9H4', 'optval_01JYA8DVW96VVKN1HS1ZED3QPB');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXMYAPV35M6FY6EH48A', 'optval_01JYA8DVW9M57972KJR5RCT98K');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXMEKVH09TX4ZTNXBHD', 'optval_01JYA8DVW91YVBP6XMKZQH32W0');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXMJC56MENVSMA1VP9R', 'optval_01JYA8DVWAPF5NFWPHNGSNMKKM');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXM0G4KF2E708V91763', 'optval_01JYA8DVWAEE2BBZXV4DD0925R');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNFKSFNGM8J1BJR037', 'optval_01JYA8DVWAFGBB5K2FDSXVMM34');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXN9N1DTTDBRT9QHHXT', 'optval_01JYA8DVWAVPEZAEHEXBY3JY5A');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNKPNHM14461PAR38T', 'optval_01JYA8DVWATY9GW03VK3KR0Z8K');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXN531KXDC5J0E6AD4A', 'optval_01JYA8DVWAFZCC58DZJ0H2ZMNW');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNFY0B23JNKRTGBX2B', 'optval_01JYA8DVWA49B1VR97GHNYPABQ');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXN9F55N56JBFM6MPTW', 'optval_01JYA8DVWACTKSQFM0QSBRE0XK');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNXZHDGS51N4T1B84X', 'optval_01JYA8DVWAHNZD32XW3T5J875E');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNEWW3JK7DFMMFTNKS', 'optval_01JYA8DVWBNN1AZR0CFYBPXRHQ');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXNSKZTN96KFJZFHY5N', 'optval_01JYA8DVWB4W1DNG2FS7YTWA60');
INSERT INTO public.product_variant_option (variant_id, option_value_id) VALUES ('variant_01JYA8DVXN5FBTDKMRED13V6ZH', 'optval_01JYA8DVWBG3AAMQ9H4CP12Q86');


--
-- Data for Name: product_variant_price_set; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVFMZNNXCB3DRS1RF67', 'pset_01JX0A3KY62QTJEC74NA4GDKQG', 'pvps_01JX0A3KZHMSMS6DSRVH5KP8CR', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGJKAPBX931H53XFAS', 'pset_01JX0A3KY7GSXRXGNYPNZK73TN', 'pvps_01JX0A3KZHT1K5PBPXX5PSH4ZB', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGKKYV12CNVG9JEQ3E', 'pset_01JX0A3KY8WSXWM5QQBRVRV405', 'pvps_01JX0A3KZJ4JX95WRXTYFW83JJ', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGDKX8G3ZCHCA9E6AP', 'pset_01JX0A3KY8WRKB8SEVSFRRG9JM', 'pvps_01JX0A3KZJABG18966C82QB1AY', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGHX1K8469E7SEG4TC', 'pset_01JX0A3KY87PEJAQFZ9DNNNHD9', 'pvps_01JX0A3KZJ98B5BBT5FY31D9H6', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGB8QTWDC772326R1P', 'pset_01JX0A3KY8RDZWDZY3NKHZJ20J', 'pvps_01JX0A3KZJ47RNKTDASG54MTM5', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGTT34GVCKHVAJ2RMZ', 'pset_01JX0A3KY9WNR5N40QMKGCBHA0', 'pvps_01JX0A3KZJ5AYBG8QRWKKYGMJ9', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGT0T9ZXHJG3VGVFB4', 'pset_01JX0A3KY9A9KVH9TKHBPDG2KF', 'pvps_01JX0A3KZJWH88TNR6WZ20HHC5', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGNG2NRZSKSWM860X5', 'pset_01JX0A3KY9ZYW9F0RC6Q61CFK5', 'pvps_01JX0A3KZJG0EKB34772JZH41R', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVGMTFCZS7JXZRSZVX5', 'pset_01JX0A3KY9W9YE1HJH9WYE554G', 'pvps_01JX0A3KZJ2ZVZTEH6J8QFY0BC', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHZDZEBZ2PVHD40SB1', 'pset_01JX0A3KYA6F8KKZ0RVTETYAJC', 'pvps_01JX0A3KZJP50NKB0BWKYR3AT0', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHR8FA4KEZM4A10YB7', 'pset_01JX0A3KYABKS63AEVHEKHKTRM', 'pvps_01JX0A3KZJFYJSRB2RKYR3FX9W', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH76Q7WB29X2CAHNGZ', 'pset_01JX0A3KYASJ359JFW0QMTR1ZD', 'pvps_01JX0A3KZJR6VTN8N5DP2AY0PB', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHKW2CD8JH2ZVT3AM5', 'pset_01JX0A3KYA30KXTTAT15G1J2VB', 'pvps_01JX0A3KZJW7168ZXY2TNFW4E3', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHT8HJ5D626EBPMSES', 'pset_01JX0A3KYBGG8CWE9NE94YBAVP', 'pvps_01JX0A3KZJMVTP5QXNJEA7XC41', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH8JX6R9NAGA0B63Q5', 'pset_01JX0A3KYBHNSMRV3R5YD2VC72', 'pvps_01JX0A3KZJM6ESANF7RD7NMV60', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH2TDAV5PTEPRY00AY', 'pset_01JX0A3KYB3X7E2HHCWVQAADGB', 'pvps_01JX0A3KZJ5486R8CNT594XHZR', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVH7ARR9DHT8NDTPMT9', 'pset_01JX0A3KYBGCD7QFM3XAFGM745', 'pvps_01JX0A3KZJYJ47D765NNJRKTPK', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHG6GVPZ0WR3671Q2D', 'pset_01JX0A3KYCQYP1X9HNR9TZ10F3', 'pvps_01JX0A3KZJNKCH6YQPPG604ZQK', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JX0A3KVHAG2XZ5V8S6K95YR3', 'pset_01JX0A3KYC7Z4Z0GCYW2R3X2S3', 'pvps_01JX0A3KZJ55QXJJ76A827PFS8', '2025-06-05 15:07:15.823222+00', '2025-06-05 15:07:15.823222+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JWY4FNXN3F7NF793G888CXPW', 'pset_01JWY4FNYHTJHWYA6M0VTC0VN5', 'pvps_01JWY4FNZ066J9CXJ5SMKGZXY5', '2025-06-04 18:50:30.752193+00', '2025-06-07 12:20:23.848+00', '2025-06-07 12:20:23.848+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRCMDRZPRTYSQJQF2TE', 'pset_01JY9EAQSA0E63N9WEARFTSFTE', 'pvps_01JY9EAQT1ACK6AXKE1EBVK73C', '2025-06-21 14:29:55.136062+00', '2025-06-21 15:28:03.522+00', '2025-06-21 15:28:03.521+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRD0CPE8ASWH06TGENY', 'pset_01JY9EAQSAGAX14MBSRQDKC7R1', 'pvps_01JY9EAQT18R61X4KRWCEH2NR0', '2025-06-21 14:29:55.136062+00', '2025-06-21 15:28:10.705+00', '2025-06-21 15:28:10.705+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9EAQRDC7FQFV7REBX7AF41', 'pset_01JY9EAQSA1F4DESJ27H3TYXC4', 'pvps_01JY9EAQT2KTRA0SRTTKY8TKQJ', '2025-06-21 14:29:55.136062+00', '2025-06-21 15:28:17.823+00', '2025-06-21 15:28:17.823+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9J88F6G4JAKQ8C2AHSJXXC', 'pset_01JY9J88GC3JZCMEA245JE7X5D', 'pvps_01JY9J88GZAX2Y2XWWE82R9BPQ', '2025-06-21 15:38:28.254227+00', '2025-06-21 16:04:47.626+00', '2025-06-21 16:04:47.625+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RHMCCS73YXZ5V959F8JBQ', 'pset_01JY9RHMDNS93D7N5321YENDKC', 'pvps_01JY9RHME36FKTRPMNGCE4T77T', '2025-06-21 17:28:26.81829+00', '2025-06-21 17:28:26.81829+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RJY1Z3MFKGR7KHZJGRNFR', 'pset_01JY9RJY30BKGP2MAQJ0RMSYZN', 'pvps_01JY9RJY39MS3HC1CMFD6H0HSJ', '2025-06-21 17:29:09.480468+00', '2025-06-21 17:29:09.480468+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RKVY9SCVXTKYVNZMSNNSZ', 'pset_01JY9RKVZG227JEN8V89NQXSX6', 'pvps_01JY9RKVZXDW2PH4T4A1FFMS6E', '2025-06-21 17:29:40.092533+00', '2025-06-21 17:29:40.092533+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RMNZ50K7FVTK4ETXKH6F0', 'pset_01JY9RMP0A77HKJ29X01VPYW5P', 'pvps_01JY9RMP0NY1HN01CY9BRN18BS', '2025-06-21 17:30:06.740662+00', '2025-06-21 17:30:06.740662+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RNEKP75SPD0DCQTCSGJ0E', 'pset_01JY9RNEMQB4KNV7QCPX9Z8Q4V', 'pvps_01JY9RNEN1HQ10HWP2RPA1NECC', '2025-06-21 17:30:31.96903+00', '2025-06-21 17:30:31.96903+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RP6HY7WK0JVHV1SN8PPXS', 'pset_01JY9RP6JPTSVX05DZVPR1K6N3', 'pvps_01JY9RP6K013BTPYJ4VZXFJ612', '2025-06-21 17:30:56.479944+00', '2025-06-21 17:30:56.479944+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RPVV63G11BK4KPAH9D4VE', 'pset_01JY9RPVW2Z3E0QRFNWEW7CY9K', 'pvps_01JY9RPVWEEXQE8V8TKHHVEBG3', '2025-06-21 17:31:18.285288+00', '2025-06-21 17:31:18.285288+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RQT7QFV055A1ERPEKTEC0', 'pset_01JY9RQT8FTYWJMQMJ3DV4VBN1', 'pvps_01JY9RQT8TGEJSW6P6M6ZK98E9', '2025-06-21 17:31:49.400119+00', '2025-06-21 17:31:49.400119+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9RSH6SD8QXGGEW6KT5FYN2', 'pset_01JY9RSH81564WPAC0H9Z8FTMW', 'pvps_01JY9RSH8CVCW3Q9QH4N93R5WE', '2025-06-21 17:32:45.707508+00', '2025-06-21 17:32:45.707508+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY4CQ8ZK1H9SJAB3NKVA5Q69', 'pset_01JY4CQ911H9KZAJ2789XDB4J8', 'pvps_01JY4CQ91WKRFYH4EFCCJHR99R', '2025-06-19 15:25:36.699241+00', '2025-06-21 17:51:05.696+00', '2025-06-21 17:51:05.696+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JY9PHVNH9EVA85NW6DYMEVKK', 'pset_01JY9PHVPQ3MBG4HAHK67CD5WR', 'pvps_01JY9PHVQ0NS898TG3H1ZH7H39', '2025-06-21 16:53:37.120226+00', '2025-06-21 21:35:08.612+00', '2025-06-21 21:35:08.612+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA6P1K8K27ESA38BW3ZVCMC', 'pset_01JYA6P1M33H7WVAYQT4SMG4VZ', 'pvps_01JYA6P1MKR847VPA20PR50NVM', '2025-06-21 21:35:31.475071+00', '2025-06-21 21:35:31.475071+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31A1K0TZJMG2KRY0NDJ', 'pset_01JYA7N320D34XXGDG6PKBSN48', 'pvps_01JYA7N32DK990TGC3KJR9D8E9', '2025-06-21 21:52:28.748476+00', '2025-06-21 22:00:04.994+00', '2025-06-21 22:00:04.994+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31A2J49XXYM5EB4T7P8', 'pset_01JYA7N320FTR944MEGXYK4QG9', 'pvps_01JYA7N32DMF82TRWJG3H18XWP', '2025-06-21 21:52:28.748476+00', '2025-06-21 22:00:16.093+00', '2025-06-21 22:00:16.093+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA7N31AN5KEDVXJHVHY0EFE', 'pset_01JYA7N320FH1EKBZFGKG9N53D', 'pvps_01JYA7N32DNNG1CGEQCDN1PHA3', '2025-06-21 21:52:28.748476+00', '2025-06-21 22:00:19.653+00', '2025-06-21 22:00:19.653+00');
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0VW4XSYQZTJ6C9H4', 'pset_01JYA8DVZA8D7WXZS6CYB43A43', 'pvps_01JYA8DW0V31RZM2MPHNJSKQKA', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMYAPV35M6FY6EH48A', 'pset_01JYA8DVZA7ZGZDQCQRMBE0MY8', 'pvps_01JYA8DW0WJBQFBWPPJ1QQ57E5', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMEKVH09TX4ZTNXBHD', 'pset_01JYA8DVZAN77D2SYC762NRN50', 'pvps_01JYA8DW0WDKNJQ5T4Q4AW2CVB', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXMJC56MENVSMA1VP9R', 'pset_01JYA8DVZBVG3NNPC0DCPJXPTS', 'pvps_01JYA8DW0W9MP792K5JVZAVXPK', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXM0G4KF2E708V91763', 'pset_01JYA8DVZC0S2WGTFZ2P3DTZEG', 'pvps_01JYA8DW0W917RNTH7TH36BDFA', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFKSFNGM8J1BJR037', 'pset_01JYA8DVZC99PK6XBA5BKA47WA', 'pvps_01JYA8DW0WVKZHAMQ83RMVSX2N', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9N1DTTDBRT9QHHXT', 'pset_01JYA8DVZDM5EM5X65SW5D9NSA', 'pvps_01JYA8DW0WNEV977ENW3T17JJ2', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNKPNHM14461PAR38T', 'pset_01JYA8DVZE4VQ46ZNJCYKW64EJ', 'pvps_01JYA8DW0WY0840Y8ZRAQ364TB', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN531KXDC5J0E6AD4A', 'pset_01JYA8DVZE7C6QHC9DQRP3SG7W', 'pvps_01JYA8DW0XAE202RBG3E2SV229', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNFY0B23JNKRTGBX2B', 'pset_01JYA8DVZFKY52Z35SA3JZ9J8K', 'pvps_01JYA8DW0XMMW03XHVNYAEDBTS', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN9F55N56JBFM6MPTW', 'pset_01JYA8DVZFD24313S8ZQ0T2HEE', 'pvps_01JYA8DW0XWG0G1Y460W4126D9', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNXZHDGS51N4T1B84X', 'pset_01JYA8DVZFGXRRPEZ39Z9Y0CF7', 'pvps_01JYA8DW0XQKZ7QKAJ3MXHX7FZ', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNEWW3JK7DFMMFTNKS', 'pset_01JYA8DVZFK7R336QEYF3YJ52H', 'pvps_01JYA8DW0XSFAWACQNSE5VJHKF', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXNSKZTN96KFJZFHY5N', 'pset_01JYA8DVZGTM5B8SMTHAY8G4GJ', 'pvps_01JYA8DW0XABJ4467TGQVV86QV', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);
INSERT INTO public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('variant_01JYA8DVXN5FBTDKMRED13V6ZH', 'pset_01JYA8DVZGSARSVZHJ6AXSMTNN', 'pvps_01JYA8DW0X5VGYB9ND2RNYPWKJ', '2025-06-21 22:06:00.730802+00', '2025-06-21 22:06:00.730802+00', NULL);


--
-- Data for Name: promotion; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion (id, code, campaign_id, is_automatic, type, created_at, updated_at, deleted_at, status) VALUES ('promo_01JYAAC6JRF8B8S4E6YJT0M7M3', 'CASTRO44', 'procamp_01JYAAC6JXXYS4Z7815XE2TFYY', 'f', 'standard', '2025-06-21 22:40:03.168+00', '2025-06-21 22:40:03.168+00', NULL, 'draft');


--
-- Data for Name: promotion_application_method; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_application_method (id, value, raw_value, max_quantity, apply_to_quantity, buy_rules_min_quantity, type, target_type, allocation, promotion_id, created_at, updated_at, deleted_at, currency_code) VALUES ('proappmet_01JYAAC6JW4YQ4GCC5VJ1V1B1A', '5', '{"value": "5", "precision": 20}', '23', NULL, NULL, 'percentage', 'items', 'each', 'promo_01JYAAC6JRF8B8S4E6YJT0M7M3', '2025-06-21 22:40:03.167+00', '2025-06-21 22:40:03.167+00', NULL, NULL);


--
-- Data for Name: promotion_campaign; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_campaign (id, name, description, campaign_identifier, starts_at, ends_at, created_at, updated_at, deleted_at) VALUES ('procamp_01JYAAC6JXXYS4Z7815XE2TFYY', 'test campaign', 'Testing campaign', 'test-campaign', '2025-06-22 00:00:00+00', '2025-08-20 01:02:00+00', '2025-06-21 22:40:03.167+00', '2025-06-22 21:06:58.003+00', NULL);


--
-- Data for Name: promotion_campaign_budget; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_campaign_budget (id, type, campaign_id, "limit", raw_limit, used, raw_used, created_at, updated_at, deleted_at, currency_code) VALUES ('probudg_01JYAAC6JY7CNS3Z2P2VJCTGR8', 'usage', 'procamp_01JYAAC6JXXYS4Z7815XE2TFYY', '3', '{"value": "3", "precision": 20}', '0', '{"value": "0", "precision": 20}', '2025-06-21 22:40:03.167+00', '2025-06-21 22:40:03.167+00', NULL, NULL);


--
-- Data for Name: promotion_promotion_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_promotion_rule (promotion_id, promotion_rule_id) VALUES ('promo_01JYAAC6JRF8B8S4E6YJT0M7M3', 'prorul_01JYAAC6JS71SJ7DJQ2A5S64E4');


--
-- Data for Name: promotion_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_rule (id, description, attribute, operator, created_at, updated_at, deleted_at) VALUES ('prorul_01JYAAC6JS71SJ7DJQ2A5S64E4', NULL, 'shipping_address.country_code', 'eq', '2025-06-21 22:40:03.168+00', '2025-06-21 22:40:03.168+00', NULL);
INSERT INTO public.promotion_rule (id, description, attribute, operator, created_at, updated_at, deleted_at) VALUES ('prorul_01JYAAC6KKGHGCQREE73H1KRJG', NULL, 'items.product.categories.id', 'in', '2025-06-21 22:40:03.187+00', '2025-06-21 22:40:03.187+00', NULL);


--
-- Data for Name: promotion_rule_value; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYAAC6JTAKBCD3XG7A5ATC4C', 'prorul_01JYAAC6JS71SJ7DJQ2A5S64E4', 'gh', '2025-06-21 22:40:03.168+00', '2025-06-21 22:40:03.168+00', NULL);
INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYCQFT8C541TQ8F6EAQZTGY4', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG', 'pcat_01JX0A3KRS3SH2ESGV7PWZT5B8', '2025-06-22 21:07:41.969+00', '2025-06-22 21:07:41.969+00', NULL);
INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYCQFT8DARGFGWJG9ECEBCZ6', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG', 'pcat_01JX0A3KRT30F9PEJFY3HXBP76', '2025-06-22 21:07:41.969+00', '2025-06-22 21:07:41.969+00', NULL);
INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYCQFT8DZ332NVXE6TWZZNAP', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG', 'pcat_01JX0A3KRSRB3N9XW79QXC7AN0', '2025-06-22 21:07:41.969+00', '2025-06-22 21:07:41.969+00', NULL);
INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYCQFT8D842F60RJNE53YP4Q', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG', 'pcat_01JX0A3KRTDJYJ2BFR2JRYR785', '2025-06-22 21:07:41.969+00', '2025-06-22 21:07:41.969+00', NULL);
INSERT INTO public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) VALUES ('prorulval_01JYCQFT8DKXNRWB19XBE6NH05', 'prorul_01JYAAC6KKGHGCQREE73H1KRJG', 'pcat_01JY49D8FD040WV1Y7PVS9P8MD', '2025-06-22 21:07:41.969+00', '2025-06-22 21:07:41.969+00', NULL);


--
-- Data for Name: provider_identity; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JWY4CQGNW62PKWJCTK31YVJM', 'john.steve.ur@gmail.com', 'emailpass', 'authid_01JWY4CQGNYP07RWY68DAAK6ZQ', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAarSt5BkbdA787vMTffTME+Kxlkhlms1jdJbujtGJARFtbV6YKhY95rkcKdeO+d0uxUBoXXTbRldzC/Gcu7oOjPZWI2SoZhcZ4CkegoEuRox"}', '2025-06-04 18:48:54.038+00', '2025-06-04 18:48:54.038+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JX0BE4FR8RHX3YA17EZSR1V7', 'viruky@mailinator.com', 'emailpass', 'authid_01JX0BE4FR8TPGJGW1RT3YGVHY', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAbYFpn/dHsm4Qv5VK0J2r7GJZDzi42VdglOgQFWBcXNjYhrwJMeqF2EMqdetOnkZDzQM+Has0lr+RDahYDb+FkT3PaIKDGCQNTpZeYTGeyBP"}', '2025-06-05 15:30:28.985+00', '2025-06-05 15:30:28.985+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JX0X0BDFNVVF4RH8K7EVHP84', 'john.steven.ur@gmail.com', 'emailpass', 'authid_01JX0X0BDFD9TZ237CVRWEJEGD', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAeAjZjS2snQhcTcqFEmd1UkSnGmD6T2owjKh6B1PCymnL+hs0kC5kjQ6gXSXUov4psjcDyjDleytgyfFvwjRfWt1rWwYSkiGA0Yu1x1uXi8u"}', '2025-06-05 20:37:31.696+00', '2025-06-05 20:37:31.696+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JXA6R1F0W32T0JFK97STN66J', 'pozoty@mailinator.com', 'emailpass', 'authid_01JXA6R1F1Z332F9N3S9SVZFBG', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAWq2y3jMEdMbs8wTW8VWIE8UgjZcL46Lzpms7gyuGeNeVMhbFrwwQb0mzPusbm3gSmUD/Uiz0Ir0lfK4+uEFo1W0WFahLw6e+uTgEVNTf5Uy"}', '2025-06-09 11:20:55.01+00', '2025-06-09 11:20:55.01+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JXA76SX44XRC4CKAP7VX28GX', 'limig@mailinator.com', 'emailpass', 'authid_01JXA76SX4GXAHVB3VTGV2TAAH', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAYzKGjDipwQALLGSHHbK/65h+hm+/0D3boykunN7/z46hOfxKMCDZEdy/zyXqGFY/u8046LU9Kd18upJa1J1es85zE7qf2m559s7PwDFplhE"}', '2025-06-09 11:28:58.788+00', '2025-06-09 11:28:58.788+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JXA7PS4DGYH88HGS5T9QVAW2', 'zape@mailinator.com', 'emailpass', 'authid_01JXA7PS4DG5QW34V5H4RBY6AJ', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAU8omn9OOLu+9LF4vzMHiM58jsCFJTPcE6nA42fmmSbIUsl4SXW1bh2bcexQGJPVRyOI/eWTPqkP74eKHDzKwdkQzbOmVqc02zAi6eUQ1FKh"}', '2025-06-09 11:37:42.286+00', '2025-06-09 11:37:42.286+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JXZ0TFWZFQG5JV9J5NB44TK9', 'ponukalaf@mailinator.com', 'emailpass', 'authid_01JXZ0TFX091Z7YSHTHENERAQH', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAVjHWFVddw4e5v7TCoUfj1EpIpKL1IFomE67ituYWUq6mEcdrMTjcN27W9f2+r93A52NZqCTtFX38jcfKJWRoQMBwNB6R7d52ScoODcRCs5X"}', '2025-06-17 13:21:26.959+00', '2025-06-17 13:21:26.959+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JXZ1B9RPTWNF7MGVZM7TM50R', 'vohicopura@mailinator.com', 'emailpass', 'authid_01JXZ1B9RQKESJHBMNJTVG43B0', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAYXi/sSb5aglTYvqdbbh9RrbvwbnA+eE4R6D04Ia926vzOZ8qCkWSWsNaSO6Jf0/x6aufuYzWfBZYDUydwa0Mjdx9D6bDVq0K6MHkG1oqxA2"}', '2025-06-17 13:30:37.719+00', '2025-06-17 13:30:37.719+00', NULL);
INSERT INTO public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) VALUES ('01JY22CH8HFQXM26HV8QZPVT16', 'emmanuel.eyeson@gmail.com', 'emailpass', 'authid_01JY22CH8HKH4SRTMPXZNF0C1G', NULL, '{"password": "c2NyeXB0AA8AAAAIAAAAAQ8rrwiPh0u9EG9PIeg+VxympRkRpLDZ2vegVVXxaZWsoYrbrPIBWCxQ3XPVedcvbXEFAYqTVCRS8olKZedpnVQh3Kma4yAl6+XWeOoLmMhd"}', '2025-06-18 17:46:30.034+00', '2025-06-18 17:46:30.034+00', NULL);


--
-- Data for Name: publishable_api_key_sales_channel; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.publishable_api_key_sales_channel (publishable_key_id, sales_channel_id, id, created_at, updated_at, deleted_at) VALUES ('apk_01JX0A3KR40M4TS7CDQ4KVHGS8', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'pksc_01JX0A3KRB9G9KPCJ4ZSJKSB9V', '2025-06-05 15:07:15.594792+00', '2025-06-05 15:07:15.594792+00', NULL);


--
-- Data for Name: refund; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.refund


--
-- Data for Name: refund_reason; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.refund_reason


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.region (id, name, currency_code, metadata, created_at, updated_at, deleted_at, automatic_taxes) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'US', 'usd', NULL, '2025-06-05 15:07:15.388+00', '2025-06-21 18:26:56.258+00', NULL, 't');


--
-- Data for Name: region_country; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('af', 'afg', '004', 'AFGHANISTAN', 'Afghanistan', NULL, NULL, '2025-06-04 18:27:13.46+00', '2025-06-04 18:27:13.46+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('al', 'alb', '008', 'ALBANIA', 'Albania', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('dz', 'dza', '012', 'ALGERIA', 'Algeria', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('as', 'asm', '016', 'AMERICAN SAMOA', 'American Samoa', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ad', 'and', '020', 'ANDORRA', 'Andorra', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ao', 'ago', '024', 'ANGOLA', 'Angola', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ai', 'aia', '660', 'ANGUILLA', 'Anguilla', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('aq', 'ata', '010', 'ANTARCTICA', 'Antarctica', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ag', 'atg', '028', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ar', 'arg', '032', 'ARGENTINA', 'Argentina', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('am', 'arm', '051', 'ARMENIA', 'Armenia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('aw', 'abw', '533', 'ARUBA', 'Aruba', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('au', 'aus', '036', 'AUSTRALIA', 'Australia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('at', 'aut', '040', 'AUSTRIA', 'Austria', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('az', 'aze', '031', 'AZERBAIJAN', 'Azerbaijan', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bs', 'bhs', '044', 'BAHAMAS', 'Bahamas', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bh', 'bhr', '048', 'BAHRAIN', 'Bahrain', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bd', 'bgd', '050', 'BANGLADESH', 'Bangladesh', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bb', 'brb', '052', 'BARBADOS', 'Barbados', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('by', 'blr', '112', 'BELARUS', 'Belarus', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('be', 'bel', '056', 'BELGIUM', 'Belgium', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bz', 'blz', '084', 'BELIZE', 'Belize', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bj', 'ben', '204', 'BENIN', 'Benin', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bm', 'bmu', '060', 'BERMUDA', 'Bermuda', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bt', 'btn', '064', 'BHUTAN', 'Bhutan', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bo', 'bol', '068', 'BOLIVIA', 'Bolivia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bq', 'bes', '535', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ba', 'bih', '070', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bw', 'bwa', '072', 'BOTSWANA', 'Botswana', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bv', 'bvd', '074', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('br', 'bra', '076', 'BRAZIL', 'Brazil', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('io', 'iot', '086', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bn', 'brn', '096', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bg', 'bgr', '100', 'BULGARIA', 'Bulgaria', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bf', 'bfa', '854', 'BURKINA FASO', 'Burkina Faso', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bi', 'bdi', '108', 'BURUNDI', 'Burundi', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kh', 'khm', '116', 'CAMBODIA', 'Cambodia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cm', 'cmr', '120', 'CAMEROON', 'Cameroon', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ca', 'can', '124', 'CANADA', 'Canada', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cv', 'cpv', '132', 'CAPE VERDE', 'Cape Verde', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ky', 'cym', '136', 'CAYMAN ISLANDS', 'Cayman Islands', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cf', 'caf', '140', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('td', 'tcd', '148', 'CHAD', 'Chad', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cl', 'chl', '152', 'CHILE', 'Chile', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cn', 'chn', '156', 'CHINA', 'China', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cx', 'cxr', '162', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cc', 'cck', '166', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('co', 'col', '170', 'COLOMBIA', 'Colombia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('km', 'com', '174', 'COMOROS', 'Comoros', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cg', 'cog', '178', 'CONGO', 'Congo', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cd', 'cod', '180', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ck', 'cok', '184', 'COOK ISLANDS', 'Cook Islands', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cr', 'cri', '188', 'COSTA RICA', 'Costa Rica', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ci', 'civ', '384', 'COTE D''IVOIRE', 'Cote D''Ivoire', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('hr', 'hrv', '191', 'CROATIA', 'Croatia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cu', 'cub', '192', 'CUBA', 'Cuba', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cw', 'cuw', '531', 'CURAÇAO', 'Curaçao', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cy', 'cyp', '196', 'CYPRUS', 'Cyprus', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('cz', 'cze', '203', 'CZECH REPUBLIC', 'Czech Republic', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('dj', 'dji', '262', 'DJIBOUTI', 'Djibouti', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('dm', 'dma', '212', 'DOMINICA', 'Dominica', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('do', 'dom', '214', 'DOMINICAN REPUBLIC', 'Dominican Republic', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ec', 'ecu', '218', 'ECUADOR', 'Ecuador', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('eg', 'egy', '818', 'EGYPT', 'Egypt', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sv', 'slv', '222', 'EL SALVADOR', 'El Salvador', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gq', 'gnq', '226', 'EQUATORIAL GUINEA', 'Equatorial Guinea', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('er', 'eri', '232', 'ERITREA', 'Eritrea', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ee', 'est', '233', 'ESTONIA', 'Estonia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('et', 'eth', '231', 'ETHIOPIA', 'Ethiopia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fk', 'flk', '238', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fo', 'fro', '234', 'FAROE ISLANDS', 'Faroe Islands', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fj', 'fji', '242', 'FIJI', 'Fiji', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fi', 'fin', '246', 'FINLAND', 'Finland', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gf', 'guf', '254', 'FRENCH GUIANA', 'French Guiana', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pf', 'pyf', '258', 'FRENCH POLYNESIA', 'French Polynesia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tf', 'atf', '260', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ga', 'gab', '266', 'GABON', 'Gabon', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gm', 'gmb', '270', 'GAMBIA', 'Gambia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ge', 'geo', '268', 'GEORGIA', 'Georgia', NULL, NULL, '2025-06-04 18:27:13.461+00', '2025-06-04 18:27:13.461+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gi', 'gib', '292', 'GIBRALTAR', 'Gibraltar', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gr', 'grc', '300', 'GREECE', 'Greece', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gl', 'grl', '304', 'GREENLAND', 'Greenland', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gd', 'grd', '308', 'GRENADA', 'Grenada', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gp', 'glp', '312', 'GUADELOUPE', 'Guadeloupe', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gu', 'gum', '316', 'GUAM', 'Guam', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gt', 'gtm', '320', 'GUATEMALA', 'Guatemala', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gg', 'ggy', '831', 'GUERNSEY', 'Guernsey', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gh', 'gha', '288', 'GHANA', 'Ghana', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.462+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gn', 'gin', '324', 'GUINEA', 'Guinea', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gw', 'gnb', '624', 'GUINEA-BISSAU', 'Guinea-Bissau', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gy', 'guy', '328', 'GUYANA', 'Guyana', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ht', 'hti', '332', 'HAITI', 'Haiti', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('hm', 'hmd', '334', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island And Mcdonald Islands', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('va', 'vat', '336', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('hn', 'hnd', '340', 'HONDURAS', 'Honduras', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('hk', 'hkg', '344', 'HONG KONG', 'Hong Kong', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('hu', 'hun', '348', 'HUNGARY', 'Hungary', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('is', 'isl', '352', 'ICELAND', 'Iceland', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('in', 'ind', '356', 'INDIA', 'India', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('id', 'idn', '360', 'INDONESIA', 'Indonesia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ir', 'irn', '364', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('iq', 'irq', '368', 'IRAQ', 'Iraq', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ie', 'irl', '372', 'IRELAND', 'Ireland', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('im', 'imn', '833', 'ISLE OF MAN', 'Isle Of Man', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('il', 'isr', '376', 'ISRAEL', 'Israel', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('jm', 'jam', '388', 'JAMAICA', 'Jamaica', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('jp', 'jpn', '392', 'JAPAN', 'Japan', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('je', 'jey', '832', 'JERSEY', 'Jersey', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('jo', 'jor', '400', 'JORDAN', 'Jordan', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kz', 'kaz', '398', 'KAZAKHSTAN', 'Kazakhstan', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ke', 'ken', '404', 'KENYA', 'Kenya', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ki', 'kir', '296', 'KIRIBATI', 'Kiribati', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kp', 'prk', '408', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kr', 'kor', '410', 'KOREA, REPUBLIC OF', 'Korea, Republic of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('xk', 'xkx', '900', 'KOSOVO', 'Kosovo', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kw', 'kwt', '414', 'KUWAIT', 'Kuwait', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kg', 'kgz', '417', 'KYRGYZSTAN', 'Kyrgyzstan', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('la', 'lao', '418', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lv', 'lva', '428', 'LATVIA', 'Latvia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lb', 'lbn', '422', 'LEBANON', 'Lebanon', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ls', 'lso', '426', 'LESOTHO', 'Lesotho', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lr', 'lbr', '430', 'LIBERIA', 'Liberia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ly', 'lby', '434', 'LIBYA', 'Libya', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('li', 'lie', '438', 'LIECHTENSTEIN', 'Liechtenstein', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lt', 'ltu', '440', 'LITHUANIA', 'Lithuania', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lu', 'lux', '442', 'LUXEMBOURG', 'Luxembourg', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mo', 'mac', '446', 'MACAO', 'Macao', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mk', 'mkd', '807', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mg', 'mdg', '450', 'MADAGASCAR', 'Madagascar', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mw', 'mwi', '454', 'MALAWI', 'Malawi', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('my', 'mys', '458', 'MALAYSIA', 'Malaysia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mv', 'mdv', '462', 'MALDIVES', 'Maldives', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ml', 'mli', '466', 'MALI', 'Mali', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mt', 'mlt', '470', 'MALTA', 'Malta', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mh', 'mhl', '584', 'MARSHALL ISLANDS', 'Marshall Islands', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mq', 'mtq', '474', 'MARTINIQUE', 'Martinique', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mr', 'mrt', '478', 'MAURITANIA', 'Mauritania', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mu', 'mus', '480', 'MAURITIUS', 'Mauritius', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('yt', 'myt', '175', 'MAYOTTE', 'Mayotte', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mx', 'mex', '484', 'MEXICO', 'Mexico', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fm', 'fsm', '583', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('md', 'mda', '498', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mc', 'mco', '492', 'MONACO', 'Monaco', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mn', 'mng', '496', 'MONGOLIA', 'Mongolia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('me', 'mne', '499', 'MONTENEGRO', 'Montenegro', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ms', 'msr', '500', 'MONTSERRAT', 'Montserrat', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ma', 'mar', '504', 'MOROCCO', 'Morocco', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mz', 'moz', '508', 'MOZAMBIQUE', 'Mozambique', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mm', 'mmr', '104', 'MYANMAR', 'Myanmar', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('na', 'nam', '516', 'NAMIBIA', 'Namibia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nr', 'nru', '520', 'NAURU', 'Nauru', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('np', 'npl', '524', 'NEPAL', 'Nepal', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nl', 'nld', '528', 'NETHERLANDS', 'Netherlands', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nc', 'ncl', '540', 'NEW CALEDONIA', 'New Caledonia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nz', 'nzl', '554', 'NEW ZEALAND', 'New Zealand', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ni', 'nic', '558', 'NICARAGUA', 'Nicaragua', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ne', 'ner', '562', 'NIGER', 'Niger', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ng', 'nga', '566', 'NIGERIA', 'Nigeria', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nu', 'niu', '570', 'NIUE', 'Niue', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('nf', 'nfk', '574', 'NORFOLK ISLAND', 'Norfolk Island', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mp', 'mnp', '580', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('no', 'nor', '578', 'NORWAY', 'Norway', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('om', 'omn', '512', 'OMAN', 'Oman', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pk', 'pak', '586', 'PAKISTAN', 'Pakistan', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pw', 'plw', '585', 'PALAU', 'Palau', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ps', 'pse', '275', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pa', 'pan', '591', 'PANAMA', 'Panama', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pg', 'png', '598', 'PAPUA NEW GUINEA', 'Papua New Guinea', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('py', 'pry', '600', 'PARAGUAY', 'Paraguay', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pe', 'per', '604', 'PERU', 'Peru', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ph', 'phl', '608', 'PHILIPPINES', 'Philippines', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pn', 'pcn', '612', 'PITCAIRN', 'Pitcairn', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pl', 'pol', '616', 'POLAND', 'Poland', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pt', 'prt', '620', 'PORTUGAL', 'Portugal', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pr', 'pri', '630', 'PUERTO RICO', 'Puerto Rico', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('qa', 'qat', '634', 'QATAR', 'Qatar', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('re', 'reu', '638', 'REUNION', 'Reunion', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ro', 'rom', '642', 'ROMANIA', 'Romania', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ru', 'rus', '643', 'RUSSIAN FEDERATION', 'Russian Federation', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('rw', 'rwa', '646', 'RWANDA', 'Rwanda', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('bl', 'blm', '652', 'SAINT BARTHÉLEMY', 'Saint Barthélemy', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sh', 'shn', '654', 'SAINT HELENA', 'Saint Helena', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('kn', 'kna', '659', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lc', 'lca', '662', 'SAINT LUCIA', 'Saint Lucia', NULL, NULL, '2025-06-04 18:27:13.462+00', '2025-06-04 18:27:13.462+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('mf', 'maf', '663', 'SAINT MARTIN (FRENCH PART)', 'Saint Martin (French part)', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('pm', 'spm', '666', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('vc', 'vct', '670', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ws', 'wsm', '882', 'SAMOA', 'Samoa', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sm', 'smr', '674', 'SAN MARINO', 'San Marino', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('st', 'stp', '678', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sa', 'sau', '682', 'SAUDI ARABIA', 'Saudi Arabia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sn', 'sen', '686', 'SENEGAL', 'Senegal', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('rs', 'srb', '688', 'SERBIA', 'Serbia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sc', 'syc', '690', 'SEYCHELLES', 'Seychelles', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sl', 'sle', '694', 'SIERRA LEONE', 'Sierra Leone', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sg', 'sgp', '702', 'SINGAPORE', 'Singapore', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sx', 'sxm', '534', 'SINT MAARTEN', 'Sint Maarten', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sk', 'svk', '703', 'SLOVAKIA', 'Slovakia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('si', 'svn', '705', 'SLOVENIA', 'Slovenia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sb', 'slb', '090', 'SOLOMON ISLANDS', 'Solomon Islands', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('so', 'som', '706', 'SOMALIA', 'Somalia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('za', 'zaf', '710', 'SOUTH AFRICA', 'South Africa', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gs', 'sgs', '239', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ss', 'ssd', '728', 'SOUTH SUDAN', 'South Sudan', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('lk', 'lka', '144', 'SRI LANKA', 'Sri Lanka', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sd', 'sdn', '729', 'SUDAN', 'Sudan', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sr', 'sur', '740', 'SURINAME', 'Suriname', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sj', 'sjm', '744', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sz', 'swz', '748', 'SWAZILAND', 'Swaziland', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ch', 'che', '756', 'SWITZERLAND', 'Switzerland', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('sy', 'syr', '760', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tw', 'twn', '158', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tj', 'tjk', '762', 'TAJIKISTAN', 'Tajikistan', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tz', 'tza', '834', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('th', 'tha', '764', 'THAILAND', 'Thailand', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tl', 'tls', '626', 'TIMOR LESTE', 'Timor Leste', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tg', 'tgo', '768', 'TOGO', 'Togo', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tk', 'tkl', '772', 'TOKELAU', 'Tokelau', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('to', 'ton', '776', 'TONGA', 'Tonga', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tt', 'tto', '780', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tn', 'tun', '788', 'TUNISIA', 'Tunisia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tr', 'tur', '792', 'TURKEY', 'Turkey', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tm', 'tkm', '795', 'TURKMENISTAN', 'Turkmenistan', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tc', 'tca', '796', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('tv', 'tuv', '798', 'TUVALU', 'Tuvalu', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ug', 'uga', '800', 'UGANDA', 'Uganda', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ua', 'ukr', '804', 'UKRAINE', 'Ukraine', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ae', 'are', '784', 'UNITED ARAB EMIRATES', 'United Arab Emirates', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('us', 'usa', '840', 'UNITED STATES', 'United States', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('um', 'umi', '581', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('uy', 'ury', '858', 'URUGUAY', 'Uruguay', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('uz', 'uzb', '860', 'UZBEKISTAN', 'Uzbekistan', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('vu', 'vut', '548', 'VANUATU', 'Vanuatu', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ve', 'ven', '862', 'VENEZUELA', 'Venezuela', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('vn', 'vnm', '704', 'VIET NAM', 'Viet Nam', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('vg', 'vgb', '092', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('vi', 'vir', '850', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.S.', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('wf', 'wlf', '876', 'WALLIS AND FUTUNA', 'Wallis and Futuna', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('eh', 'esh', '732', 'WESTERN SAHARA', 'Western Sahara', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ye', 'yem', '887', 'YEMEN', 'Yemen', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('zm', 'zmb', '894', 'ZAMBIA', 'Zambia', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('zw', 'zwe', '716', 'ZIMBABWE', 'Zimbabwe', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('ax', 'ala', '248', 'ÅLAND ISLANDS', 'Åland Islands', NULL, NULL, '2025-06-04 18:27:13.463+00', '2025-06-04 18:27:13.463+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('de', 'deu', '276', 'GERMANY', 'Germany', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.462+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('dk', 'dnk', '208', 'DENMARK', 'Denmark', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.461+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('es', 'esp', '724', 'SPAIN', 'Spain', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.463+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('fr', 'fra', '250', 'FRANCE', 'France', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.461+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('gb', 'gbr', '826', 'UNITED KINGDOM', 'United Kingdom', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.463+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('it', 'ita', '380', 'ITALY', 'Italy', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.462+00', '2025-06-09 17:48:25.938+00', NULL);
INSERT INTO public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) VALUES ('se', 'swe', '752', 'SWEDEN', 'Sweden', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', NULL, '2025-06-04 18:27:13.463+00', '2025-06-09 17:48:25.938+00', NULL);


--
-- Data for Name: region_payment_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_system_default', 'regpp_01JX0A3KJM90Y6EAW5TQX5Q788', '2025-06-05 15:07:15.411823+00', '2025-06-05 15:07:15.411823+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe_stripe', 'regpp_01JY9VWQMTHWFNB344VYCM54EK', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe-bancontact_stripe', 'regpp_01JY9VWQMTZSHMN92QT2BA8KSE', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe-blik_stripe', 'regpp_01JY9VWQMTGFRH1FSXEEGFAS9P', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe-giropay_stripe', 'regpp_01JY9VWQMTYRX2VQHW93D8MD46', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe-ideal_stripe', 'regpp_01JY9VWQMT28DGDWNRAD8AW3QZ', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);
INSERT INTO public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) VALUES ('reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'pp_stripe-przelewy24_stripe', 'regpp_01JY9VWQMTMY5AHNQMC82SXNAG', '2025-06-21 18:26:56.281266+00', '2025-06-21 18:26:56.281266+00', NULL);


--
-- Data for Name: reservation_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0BAYH45550W6V4RGYPJEK2', '2025-06-05 15:28:44.585+00', '2025-06-05 15:28:44.585+00', NULL, 'ordli_01JX0BAYF2H2KQV0P2Q5HFFS02', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNMBHP7T33HW8JRMDS', 'f', '{"value": "2", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0BHJB6RX6QMN349KQETJKB', '2025-06-05 15:32:21.486+00', '2025-06-05 15:32:21.486+00', NULL, 'ordli_01JX0BHJ9JRXC9R1M9KERSJ8TA', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '3', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNMBHP7T33HW8JRMDS', 'f', '{"value": "3", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0BMYH1W5TJQ3F9PCEEBRX0', '2025-06-05 15:34:12.269+00', '2025-06-05 15:34:12.269+00', NULL, 'ordli_01JX0BMYF7T4TJQVWMY09XXX4E', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWPRPEG8EXMK34BASWW', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0BYZT6KF0J5WZ0R9D1Z9SD', '2025-06-05 15:39:41.264+00', '2025-06-05 15:41:02.963+00', '2025-06-05 15:41:02.948+00', 'ordli_01JX0BYZRJZZ05H657R5ZXXCZQ', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWPEH5C400Z4NFQ9WPZ', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0C642VFYTDN99R3RSAXJN2', '2025-06-05 15:43:35.011+00', '2025-06-05 15:43:35.011+00', NULL, 'ordli_01JX0C6419FRKE9RN75M5HXGCD', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0CJYW4PEVR1VE2K6NGXRBH', '2025-06-05 15:50:35.66+00', '2025-06-05 15:50:35.66+00', NULL, 'ordli_01JX0CJYT462S762WQ2B78HWJM', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', 'f', '{"value": "2", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0CJYW4GXKFVCZP18R91T6V', '2025-06-05 15:50:35.66+00', '2025-06-05 15:50:35.66+00', NULL, 'ordli_01JX0CJYT4VQGQ67W28WHM56GG', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNH0NSC47RHZWDPDD8', 'f', '{"value": "2", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0DPJ2VTX17EC5MWFP7DT60', '2025-06-05 16:10:02.214+00', '2025-06-05 16:10:02.214+00', NULL, 'ordli_01JX0DPJ0N9WW0SYSK6FSZRWDY', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWN3MYDC8ZAJFTV82XT', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0VR8MXF396BD86G35EW74N', '2025-06-05 20:15:38.159+00', '2025-06-05 20:15:38.159+00', NULL, 'ordli_01JX0VR8HG4SNF471MGP24WN95', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNJRC8YZYSA0MW73VT', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX0WSYP7C0RG1QHTDH3S1MPM', '2025-06-05 20:34:02.06+00', '2025-06-05 20:34:02.06+00', NULL, 'ordli_01JX0WSYM50NC20EPZXB2ZQ0W7', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNJRC8YZYSA0MW73VT', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX54XWA8C5G7M78PRQ5VHGMC', '2025-06-07 12:12:57.038+00', '2025-06-25 13:01:20.341+00', '2025-06-25 13:01:20.312+00', 'ordli_01JX54XW88TF282M1VPNPXGRF2', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWPRPEG8EXMK34BASWW', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JX54W2DQEGJKFQM7CHY4KGRH', '2025-06-07 12:11:57.758+00', '2025-06-25 13:02:06.69+00', '2025-06-25 13:02:06.658+00', 'ordli_01JX54W2BP7ZNTJEWY056EWHSE', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JX0A3KWNMBHP7T33HW8JRMDS', 'f', '{"value": "1", "precision": 20}');
INSERT INTO public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) VALUES ('resitem_01JYKHAAZCYXS17QZ0Z61GY447', '2025-06-25 12:34:32.057+00', '2025-06-29 17:52:52.207+00', '2025-06-29 17:52:52.187+00', 'ordli_01JYKHAASBXAFGSWGGMDNSAVZM', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '1', NULL, NULL, NULL, NULL, 'iitem_01JY9RQT80SQFPXDR9WH5EB206', 'f', '{"value": "1", "precision": 20}');


--
-- Data for Name: return; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.return


--
-- Data for Name: return_fulfillment; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.return_fulfillment


--
-- Data for Name: return_item; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.return_item


--
-- Data for Name: return_reason; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.return_reason


--
-- Data for Name: sales_channel; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.sales_channel (id, name, description, is_disabled, metadata, created_at, updated_at, deleted_at) VALUES ('sc_01JWY3551WCZ916A1WRN64Z1CQ', 'Main sales channel', 'Officia sint rerum v', 'f', NULL, '2025-06-04 18:27:17.181+00', '2025-06-21 22:51:06.853+00', NULL);


--
-- Data for Name: sales_channel_stock_location; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.sales_channel_stock_location (sales_channel_id, stock_location_id, id, created_at, updated_at, deleted_at) VALUES ('sc_01JWY3551WCZ916A1WRN64Z1CQ', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', 'scloc_01JX0A3KQVPTA5FHBQ9SCEZYQ6', '2025-06-05 15:07:15.57903+00', '2025-06-05 15:07:15.57903+00', NULL);
INSERT INTO public.sales_channel_stock_location (sales_channel_id, stock_location_id, id, created_at, updated_at, deleted_at) VALUES ('sc_01JWY3551WCZ916A1WRN64Z1CQ', 'sloc_01JYAB28FHWZN420F7F7FVRH4Q', 'scloc_01JYAB4P0NS4FV5NEF2RB52YB8', '2025-06-21 22:53:25.396969+00', '2025-06-21 22:53:36.135+00', '2025-06-21 22:53:36.134+00');


--
-- Data for Name: service_zone; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.service_zone (id, name, metadata, fulfillment_set_id, created_at, updated_at, deleted_at) VALUES ('serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', 'Europe', NULL, 'fuset_01JX0A3KMJW8DBCT3P1YEMYMAA', '2025-06-05 15:07:15.475+00', '2025-06-05 15:07:15.475+00', NULL);
INSERT INTO public.service_zone (id, name, metadata, fulfillment_set_id, created_at, updated_at, deleted_at) VALUES ('serzo_01JY9WTZVY805KJKE9EVT6JMN4', 'North America', NULL, 'fuset_01JX0A3KMJW8DBCT3P1YEMYMAA', '2025-06-21 18:43:27.743+00', '2025-06-21 18:45:01.438+00', NULL);
INSERT INTO public.service_zone (id, name, metadata, fulfillment_set_id, created_at, updated_at, deleted_at) VALUES ('serzo_01JYAB33JCHVS7PDEXNTZJKMC8', 'Elizabeth Ballard', NULL, 'fuset_01JYAB2P65H33PF5YZN54Z7GXA', '2025-06-21 22:52:33.741+00', '2025-06-21 22:52:33.741+00', NULL);
INSERT INTO public.service_zone (id, name, metadata, fulfillment_set_id, created_at, updated_at, deleted_at) VALUES ('serzo_01JYAB3TYSC2RJD3TC0KH7YG9Q', 'Lani Mueller', NULL, 'fuset_01JYAB3A0N1PS59C5SSK1XQG94', '2025-06-21 22:52:57.689+00', '2025-06-21 22:52:57.689+00', NULL);


--
-- Data for Name: shipping_option; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.shipping_option (id, name, price_type, service_zone_id, shipping_profile_id, provider_id, data, metadata, shipping_option_type_id, created_at, updated_at, deleted_at) VALUES ('so_01JX0A3KP8A6CWM0ACSGWM77WH', 'Standard Shipping', 'flat', 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'manual_manual', NULL, NULL, 'sotype_01JX0A3KP8GTN2ATYJ42KH2ZAY', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option (id, name, price_type, service_zone_id, shipping_profile_id, provider_id, data, metadata, shipping_option_type_id, created_at, updated_at, deleted_at) VALUES ('so_01JX0A3KP977M4PJZGX2BQV4G0', 'Express Shipping', 'flat', 'serzo_01JX0A3KMH8M2WRW2HTNRZXPDY', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'manual_manual', NULL, NULL, 'sotype_01JX0A3KP9Z8RASYRNVTMV3TYD', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option (id, name, price_type, service_zone_id, shipping_profile_id, provider_id, data, metadata, shipping_option_type_id, created_at, updated_at, deleted_at) VALUES ('so_01JYAATYZPRYT2XHAMVSK2BH9E', 'Testing', 'flat', 'serzo_01JY9WTZVY805KJKE9EVT6JMN4', 'sp_01JX0A3KM8CF5RKY7RQS97EB40', 'manual_manual', '{"id": "manual-fulfillment"}', NULL, 'sotype_01JYAATYZN13FVH07Z8MSXACYK', '2025-06-21 22:48:06.902+00', '2025-06-21 22:48:06.902+00', NULL);


--
-- Data for Name: shipping_option_price_set; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.shipping_option_price_set (shipping_option_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('so_01JX0A3KP8A6CWM0ACSGWM77WH', 'pset_01JX0A3KPTPQ6YMCH0NWYGVQ6C', 'sops_01JX0A3KQKCTV3TEE1A25Y06GQ', '2025-06-05 15:07:15.570589+00', '2025-06-05 15:07:15.570589+00', NULL);
INSERT INTO public.shipping_option_price_set (shipping_option_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('so_01JX0A3KP977M4PJZGX2BQV4G0', 'pset_01JX0A3KPV2HZB8AQNRPTCC1S1', 'sops_01JX0A3KQKWY9TGKNHTC3J0SC8', '2025-06-05 15:07:15.570589+00', '2025-06-05 15:07:15.570589+00', NULL);
INSERT INTO public.shipping_option_price_set (shipping_option_id, price_set_id, id, created_at, updated_at, deleted_at) VALUES ('so_01JYAATYZPRYT2XHAMVSK2BH9E', 'pset_01JYAATZ0495EQTMVEEF35NFSN', 'sops_01JYAATZ0KY540NY9WN7M8VQEC', '2025-06-21 22:48:06.930846+00', '2025-06-21 22:48:06.930846+00', NULL);


--
-- Data for Name: shipping_option_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JX0A3KP82C2SA7CPGX54WAHH', 'enabled_in_store', 'eq', '"true"', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JX0A3KP8DGREAGQ912TWRP79', 'is_return', 'eq', '"false"', 'so_01JX0A3KP8A6CWM0ACSGWM77WH', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JX0A3KP95R8J6QN50NMQQMTA', 'enabled_in_store', 'eq', '"true"', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JX0A3KP9T3SN0F5WT294465H', 'is_return', 'eq', '"false"', 'so_01JX0A3KP977M4PJZGX2BQV4G0', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JYAATYZNYTXZW6YGGPXEAWFS', 'is_return', 'eq', '"false"', 'so_01JYAATYZPRYT2XHAMVSK2BH9E', '2025-06-21 22:48:06.902+00', '2025-06-21 22:48:06.902+00', NULL);
INSERT INTO public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) VALUES ('sorul_01JYAATYZP5TK85QP7VQJ42A6T', 'enabled_in_store', 'eq', '"false"', 'so_01JYAATYZPRYT2XHAMVSK2BH9E', '2025-06-21 22:48:06.902+00', '2025-06-21 22:48:29.268+00', NULL);


--
-- Data for Name: shipping_option_type; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.shipping_option_type (id, label, description, code, created_at, updated_at, deleted_at) VALUES ('sotype_01JX0A3KP8GTN2ATYJ42KH2ZAY', 'Standard', 'Ship in 2-3 days.', 'standard', '2025-06-05 15:07:15.529+00', '2025-06-05 15:07:15.529+00', NULL);
INSERT INTO public.shipping_option_type (id, label, description, code, created_at, updated_at, deleted_at) VALUES ('sotype_01JX0A3KP9Z8RASYRNVTMV3TYD', 'Express', 'Ship in 24 hours.', 'express', '2025-06-05 15:07:15.53+00', '2025-06-05 15:07:15.53+00', NULL);
INSERT INTO public.shipping_option_type (id, label, description, code, created_at, updated_at, deleted_at) VALUES ('sotype_01JYAATYZN13FVH07Z8MSXACYK', 'Type label', 'Type description', 'type-code', '2025-06-21 22:48:06.902+00', '2025-06-21 22:48:06.902+00', NULL);


--
-- Data for Name: shipping_profile; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.shipping_profile (id, name, type, metadata, created_at, updated_at, deleted_at) VALUES ('sp_01JX0A3KM8CF5RKY7RQS97EB40', 'Default Shipping Profile', 'default', NULL, '2025-06-05 15:07:15.466+00', '2025-06-05 15:07:15.466+00', NULL);


--
-- Data for Name: stock_location; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.stock_location (id, created_at, updated_at, deleted_at, name, address_id, metadata) VALUES ('sloc_01JX0A3KKGRJTBGP5X0T4X18TH', '2025-06-05 15:07:15.441+00', '2025-06-21 18:40:40.121+00', NULL, 'My warehouse', 'laddr_01JX0A3KKGQ5N78XCM9KT0GERJ', NULL);
INSERT INTO public.stock_location (id, created_at, updated_at, deleted_at, name, address_id, metadata) VALUES ('sloc_01JYAB28FHWZN420F7F7FVRH4Q', '2025-06-21 22:52:06.001+00', '2025-06-21 22:52:06.001+00', NULL, 'Karyn Flowers', 'laddr_01JYAB28FGJM0E2ASN4P54QM49', NULL);


--
-- Data for Name: stock_location_address; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.stock_location_address (id, created_at, updated_at, deleted_at, address_1, address_2, company, city, country_code, phone, province, postal_code, metadata) VALUES ('laddr_01JX0A3KKGQ5N78XCM9KT0GERJ', '2025-06-05 15:07:15.441+00', '2025-06-21 18:40:40.109+00', NULL, 'Worcester', NULL, 'Lynn Store', 'Worcester', 'us', '+1 (774) 243-4201', 'Massachusetts', NULL, NULL);
INSERT INTO public.stock_location_address (id, created_at, updated_at, deleted_at, address_1, address_2, company, city, country_code, phone, province, postal_code, metadata) VALUES ('laddr_01JYAB28FGJM0E2ASN4P54QM49', '2025-06-21 22:52:06.001+00', '2025-06-21 22:52:06.001+00', NULL, '69 West White First Court', 'Dolore voluptate aut', 'Hebert and Stark Inc', 'Minima nemo consequa', 'fk', '+1 (321) 947-3994', 'Dolore provident do', 'Sed in aut sunt in', NULL);


--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.store (id, name, default_sales_channel_id, default_region_id, default_location_id, metadata, created_at, updated_at, deleted_at) VALUES ('store_01JWY3552AEA13X9FR9RBJNM9N', 'LEVELS', 'sc_01JWY3551WCZ916A1WRN64Z1CQ', 'reg_01JX0A3KHK3G9B2MYCSDS7C74Y', 'sloc_01JX0A3KKGRJTBGP5X0T4X18TH', NULL, '2025-06-04 18:27:17.19273+00', '2025-06-04 18:27:17.19273+00', NULL);


--
-- Data for Name: store_currency; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.store_currency (id, currency_code, is_default, store_id, created_at, updated_at, deleted_at) VALUES ('stocur_01JYCNQ80F3Q5B1K7HJEGYC302', 'usd', 't', 'store_01JWY3552AEA13X9FR9RBJNM9N', '2025-06-22 20:36:48.26762+00', '2025-06-22 20:36:48.26762+00', NULL);


--
-- Data for Name: tax_provider; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.tax_provider


--
-- Data for Name: tax_rate; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.tax_rate


--
-- Data for Name: tax_rate_rule; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.tax_rate_rule


--
-- Data for Name: tax_region; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK26T32RMXZC5YWQF5C', NULL, 'gb', NULL, NULL, NULL, '2025-06-05 15:07:15.427+00', '2025-06-05 15:07:15.427+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK2ZXF1A5YRBWEHD79S', NULL, 'de', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK21KGYERK9DG394H7S', NULL, 'dk', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK3QHE47KTXNTKTZVF5', NULL, 'se', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK37GF1WXYQN1DH42KX', NULL, 'fr', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK3R18DVJ9W3DR8HNXN', NULL, 'es', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);
INSERT INTO public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) VALUES ('txreg_01JX0A3KK3V084RH00T3F5F04J', NULL, 'it', NULL, NULL, NULL, '2025-06-05 15:07:15.428+00', '2025-06-05 15:07:15.428+00', NULL, NULL);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: superuser
--

INSERT INTO public."user" (id, first_name, last_name, email, avatar_url, metadata, created_at, updated_at, deleted_at) VALUES ('user_01JY22CH65DV8YH7RAQ15M9J1M', 'Emmanuel', 'Eyeson', 'emmanuel.eyeson@gmail.com', NULL, NULL, '2025-06-18 17:46:29.957+00', '2025-06-18 17:50:49.254+00', NULL);
INSERT INTO public."user" (id, first_name, last_name, email, avatar_url, metadata, created_at, updated_at, deleted_at) VALUES ('user_01JWY4CQDSJNBBFYM0YBBQT557', 'John', 'Steve', 'john.steve.ur@gmail.com', NULL, NULL, '2025-06-04 18:48:53.946+00', '2025-06-22 20:35:44.921+00', NULL);


--
-- Data for Name: workflow_execution; Type: TABLE DATA; Schema: public; Owner: superuser
--

-- No data for table public.workflow_execution


--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.link_module_migrations_id_seq', 18, true);


--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.mikro_orm_migrations_id_seq', 101, true);


--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.order_change_action_ordering_seq', 8, true);


--
-- Name: order_claim_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.order_claim_display_id_seq', 1, false);


--
-- Name: order_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.order_display_id_seq', 12, true);


--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.order_exchange_display_id_seq', 1, false);


--
-- Name: return_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superuser
--

SELECT pg_catalog.setval('public.return_display_id_seq', 1, false);


--
-- Name: workflow_execution PK_workflow_execution_workflow_id_transaction_id; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.workflow_execution
    ADD CONSTRAINT "PK_workflow_execution_workflow_id_transaction_id" PRIMARY KEY (workflow_id, transaction_id);


--
-- Name: account_holder account_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.account_holder
    ADD CONSTRAINT account_holder_pkey PRIMARY KEY (id);


--
-- Name: api_key api_key_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.api_key
    ADD CONSTRAINT api_key_pkey PRIMARY KEY (id);


--
-- Name: application_method_buy_rules application_method_buy_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_pkey PRIMARY KEY (application_method_id, promotion_rule_id);


--
-- Name: application_method_target_rules application_method_target_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_pkey PRIMARY KEY (application_method_id, promotion_rule_id);


--
-- Name: auth_identity auth_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.auth_identity
    ADD CONSTRAINT auth_identity_pkey PRIMARY KEY (id);


--
-- Name: capture capture_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.capture
    ADD CONSTRAINT capture_pkey PRIMARY KEY (id);


--
-- Name: cart_address cart_address_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_address
    ADD CONSTRAINT cart_address_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item_adjustment cart_line_item_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item_adjustment
    ADD CONSTRAINT cart_line_item_adjustment_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item cart_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item
    ADD CONSTRAINT cart_line_item_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item_tax_line cart_line_item_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item_tax_line
    ADD CONSTRAINT cart_line_item_tax_line_pkey PRIMARY KEY (id);


--
-- Name: cart_payment_collection cart_payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_payment_collection
    ADD CONSTRAINT cart_payment_collection_pkey PRIMARY KEY (cart_id, payment_collection_id);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: cart_promotion cart_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_promotion
    ADD CONSTRAINT cart_promotion_pkey PRIMARY KEY (cart_id, promotion_id);


--
-- Name: cart_shipping_method_adjustment cart_shipping_method_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method_adjustment
    ADD CONSTRAINT cart_shipping_method_adjustment_pkey PRIMARY KEY (id);


--
-- Name: cart_shipping_method cart_shipping_method_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method
    ADD CONSTRAINT cart_shipping_method_pkey PRIMARY KEY (id);


--
-- Name: cart_shipping_method_tax_line cart_shipping_method_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method_tax_line
    ADD CONSTRAINT cart_shipping_method_tax_line_pkey PRIMARY KEY (id);


--
-- Name: credit_line credit_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.credit_line
    ADD CONSTRAINT credit_line_pkey PRIMARY KEY (id);


--
-- Name: currency currency_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (code);


--
-- Name: customer_account_holder customer_account_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_account_holder
    ADD CONSTRAINT customer_account_holder_pkey PRIMARY KEY (customer_id, account_holder_id);


--
-- Name: customer_address customer_address_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_address
    ADD CONSTRAINT customer_address_pkey PRIMARY KEY (id);


--
-- Name: customer_group_customer customer_group_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_pkey PRIMARY KEY (id);


--
-- Name: customer_group customer_group_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT customer_group_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_address fulfillment_address_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_address
    ADD CONSTRAINT fulfillment_address_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_item fulfillment_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT fulfillment_item_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_label fulfillment_label_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_label
    ADD CONSTRAINT fulfillment_label_pkey PRIMARY KEY (id);


--
-- Name: fulfillment fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_provider fulfillment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT fulfillment_provider_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_set fulfillment_set_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_set
    ADD CONSTRAINT fulfillment_set_pkey PRIMARY KEY (id);


--
-- Name: geo_zone geo_zone_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.geo_zone
    ADD CONSTRAINT geo_zone_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: inventory_item inventory_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.inventory_item
    ADD CONSTRAINT inventory_item_pkey PRIMARY KEY (id);


--
-- Name: inventory_level inventory_level_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.inventory_level
    ADD CONSTRAINT inventory_level_pkey PRIMARY KEY (id);


--
-- Name: invite invite_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.invite
    ADD CONSTRAINT invite_pkey PRIMARY KEY (id);


--
-- Name: link_module_migrations link_module_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.link_module_migrations
    ADD CONSTRAINT link_module_migrations_pkey PRIMARY KEY (id);


--
-- Name: link_module_migrations link_module_migrations_table_name_key; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.link_module_migrations
    ADD CONSTRAINT link_module_migrations_table_name_key UNIQUE (table_name);


--
-- Name: location_fulfillment_provider location_fulfillment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.location_fulfillment_provider
    ADD CONSTRAINT location_fulfillment_provider_pkey PRIMARY KEY (stock_location_id, fulfillment_provider_id);


--
-- Name: location_fulfillment_set location_fulfillment_set_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.location_fulfillment_set
    ADD CONSTRAINT location_fulfillment_set_pkey PRIMARY KEY (stock_location_id, fulfillment_set_id);


--
-- Name: mikro_orm_migrations mikro_orm_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.mikro_orm_migrations
    ADD CONSTRAINT mikro_orm_migrations_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: notification_provider notification_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT notification_provider_pkey PRIMARY KEY (id);


--
-- Name: order_address order_address_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_address
    ADD CONSTRAINT order_address_pkey PRIMARY KEY (id);


--
-- Name: order_cart order_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_cart
    ADD CONSTRAINT order_cart_pkey PRIMARY KEY (order_id, cart_id);


--
-- Name: order_change_action order_change_action_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_change_action
    ADD CONSTRAINT order_change_action_pkey PRIMARY KEY (id);


--
-- Name: order_change order_change_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_change
    ADD CONSTRAINT order_change_pkey PRIMARY KEY (id);


--
-- Name: order_claim_item_image order_claim_item_image_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_claim_item_image
    ADD CONSTRAINT order_claim_item_image_pkey PRIMARY KEY (id);


--
-- Name: order_claim_item order_claim_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_claim_item
    ADD CONSTRAINT order_claim_item_pkey PRIMARY KEY (id);


--
-- Name: order_claim order_claim_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_claim
    ADD CONSTRAINT order_claim_pkey PRIMARY KEY (id);


--
-- Name: order_credit_line order_credit_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_credit_line
    ADD CONSTRAINT order_credit_line_pkey PRIMARY KEY (id);


--
-- Name: order_exchange_item order_exchange_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_exchange_item
    ADD CONSTRAINT order_exchange_item_pkey PRIMARY KEY (id);


--
-- Name: order_exchange order_exchange_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_exchange
    ADD CONSTRAINT order_exchange_pkey PRIMARY KEY (id);


--
-- Name: order_fulfillment order_fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_fulfillment
    ADD CONSTRAINT order_fulfillment_pkey PRIMARY KEY (order_id, fulfillment_id);


--
-- Name: order_item order_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);


--
-- Name: order_line_item_adjustment order_line_item_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item_adjustment
    ADD CONSTRAINT order_line_item_adjustment_pkey PRIMARY KEY (id);


--
-- Name: order_line_item order_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item
    ADD CONSTRAINT order_line_item_pkey PRIMARY KEY (id);


--
-- Name: order_line_item_tax_line order_line_item_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item_tax_line
    ADD CONSTRAINT order_line_item_tax_line_pkey PRIMARY KEY (id);


--
-- Name: order_payment_collection order_payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_payment_collection
    ADD CONSTRAINT order_payment_collection_pkey PRIMARY KEY (order_id, payment_collection_id);


--
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- Name: order_promotion order_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_promotion
    ADD CONSTRAINT order_promotion_pkey PRIMARY KEY (order_id, promotion_id);


--
-- Name: order_shipping_method_adjustment order_shipping_method_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping_method_adjustment
    ADD CONSTRAINT order_shipping_method_adjustment_pkey PRIMARY KEY (id);


--
-- Name: order_shipping_method order_shipping_method_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping_method
    ADD CONSTRAINT order_shipping_method_pkey PRIMARY KEY (id);


--
-- Name: order_shipping_method_tax_line order_shipping_method_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping_method_tax_line
    ADD CONSTRAINT order_shipping_method_tax_line_pkey PRIMARY KEY (id);


--
-- Name: order_shipping order_shipping_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping
    ADD CONSTRAINT order_shipping_pkey PRIMARY KEY (id);


--
-- Name: order_summary order_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_summary
    ADD CONSTRAINT order_summary_pkey PRIMARY KEY (id);


--
-- Name: order_transaction order_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_transaction
    ADD CONSTRAINT order_transaction_pkey PRIMARY KEY (id);


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_pkey PRIMARY KEY (payment_collection_id, payment_provider_id);


--
-- Name: payment_collection payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT payment_collection_pkey PRIMARY KEY (id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: payment_provider payment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT payment_provider_pkey PRIMARY KEY (id);


--
-- Name: payment_session payment_session_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT payment_session_pkey PRIMARY KEY (id);


--
-- Name: price_list price_list_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT price_list_pkey PRIMARY KEY (id);


--
-- Name: price_list_rule price_list_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_list_rule
    ADD CONSTRAINT price_list_rule_pkey PRIMARY KEY (id);


--
-- Name: price price_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (id);


--
-- Name: price_preference price_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_preference
    ADD CONSTRAINT price_preference_pkey PRIMARY KEY (id);


--
-- Name: price_rule price_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT price_rule_pkey PRIMARY KEY (id);


--
-- Name: price_set price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_set
    ADD CONSTRAINT price_set_pkey PRIMARY KEY (id);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- Name: product_category_product product_category_product_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_pkey PRIMARY KEY (product_id, product_category_id);


--
-- Name: product_collection product_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT product_collection_pkey PRIMARY KEY (id);


--
-- Name: product_option product_option_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT product_option_pkey PRIMARY KEY (id);


--
-- Name: product_option_value product_option_value_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT product_option_value_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_sales_channel product_sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT product_sales_channel_pkey PRIMARY KEY (product_id, sales_channel_id);


--
-- Name: product_shipping_profile product_shipping_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_shipping_profile
    ADD CONSTRAINT product_shipping_profile_pkey PRIMARY KEY (product_id, shipping_profile_id);


--
-- Name: product_tag product_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT product_tag_pkey PRIMARY KEY (id);


--
-- Name: product_tags product_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_pkey PRIMARY KEY (product_id, product_tag_id);


--
-- Name: product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- Name: product_variant_inventory_item product_variant_inventory_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT product_variant_inventory_item_pkey PRIMARY KEY (variant_id, inventory_item_id);


--
-- Name: product_variant_option product_variant_option_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_pkey PRIMARY KEY (variant_id, option_value_id);


--
-- Name: product_variant product_variant_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_pkey PRIMARY KEY (id);


--
-- Name: product_variant_price_set product_variant_price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant_price_set
    ADD CONSTRAINT product_variant_price_set_pkey PRIMARY KEY (variant_id, price_set_id);


--
-- Name: promotion_application_method promotion_application_method_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_application_method
    ADD CONSTRAINT promotion_application_method_pkey PRIMARY KEY (id);


--
-- Name: promotion_campaign_budget promotion_campaign_budget_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_campaign_budget
    ADD CONSTRAINT promotion_campaign_budget_pkey PRIMARY KEY (id);


--
-- Name: promotion_campaign promotion_campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_campaign
    ADD CONSTRAINT promotion_campaign_pkey PRIMARY KEY (id);


--
-- Name: promotion promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);


--
-- Name: promotion_promotion_rule promotion_promotion_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_pkey PRIMARY KEY (promotion_id, promotion_rule_id);


--
-- Name: promotion_rule promotion_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_rule
    ADD CONSTRAINT promotion_rule_pkey PRIMARY KEY (id);


--
-- Name: promotion_rule_value promotion_rule_value_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_rule_value
    ADD CONSTRAINT promotion_rule_value_pkey PRIMARY KEY (id);


--
-- Name: provider_identity provider_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.provider_identity
    ADD CONSTRAINT provider_identity_pkey PRIMARY KEY (id);


--
-- Name: publishable_api_key_sales_channel publishable_api_key_sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT publishable_api_key_sales_channel_pkey PRIMARY KEY (publishable_key_id, sales_channel_id);


--
-- Name: refund refund_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_pkey PRIMARY KEY (id);


--
-- Name: refund_reason refund_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.refund_reason
    ADD CONSTRAINT refund_reason_pkey PRIMARY KEY (id);


--
-- Name: region_country region_country_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.region_country
    ADD CONSTRAINT region_country_pkey PRIMARY KEY (iso_2);


--
-- Name: region_payment_provider region_payment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.region_payment_provider
    ADD CONSTRAINT region_payment_provider_pkey PRIMARY KEY (region_id, payment_provider_id);


--
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- Name: reservation_item reservation_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.reservation_item
    ADD CONSTRAINT reservation_item_pkey PRIMARY KEY (id);


--
-- Name: return_fulfillment return_fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return_fulfillment
    ADD CONSTRAINT return_fulfillment_pkey PRIMARY KEY (return_id, fulfillment_id);


--
-- Name: return_item return_item_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT return_item_pkey PRIMARY KEY (id);


--
-- Name: return return_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return
    ADD CONSTRAINT return_pkey PRIMARY KEY (id);


--
-- Name: return_reason return_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT return_reason_pkey PRIMARY KEY (id);


--
-- Name: sales_channel sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT sales_channel_pkey PRIMARY KEY (id);


--
-- Name: sales_channel_stock_location sales_channel_stock_location_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.sales_channel_stock_location
    ADD CONSTRAINT sales_channel_stock_location_pkey PRIMARY KEY (sales_channel_id, stock_location_id);


--
-- Name: service_zone service_zone_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.service_zone
    ADD CONSTRAINT service_zone_pkey PRIMARY KEY (id);


--
-- Name: shipping_option shipping_option_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_pkey PRIMARY KEY (id);


--
-- Name: shipping_option_price_set shipping_option_price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option_price_set
    ADD CONSTRAINT shipping_option_price_set_pkey PRIMARY KEY (shipping_option_id, price_set_id);


--
-- Name: shipping_option_rule shipping_option_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option_rule
    ADD CONSTRAINT shipping_option_rule_pkey PRIMARY KEY (id);


--
-- Name: shipping_option_type shipping_option_type_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option_type
    ADD CONSTRAINT shipping_option_type_pkey PRIMARY KEY (id);


--
-- Name: shipping_profile shipping_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT shipping_profile_pkey PRIMARY KEY (id);


--
-- Name: stock_location_address stock_location_address_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.stock_location_address
    ADD CONSTRAINT stock_location_address_pkey PRIMARY KEY (id);


--
-- Name: stock_location stock_location_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT stock_location_pkey PRIMARY KEY (id);


--
-- Name: store_currency store_currency_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.store_currency
    ADD CONSTRAINT store_currency_pkey PRIMARY KEY (id);


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);


--
-- Name: tax_provider tax_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT tax_provider_pkey PRIMARY KEY (id);


--
-- Name: tax_rate tax_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT tax_rate_pkey PRIMARY KEY (id);


--
-- Name: tax_rate_rule tax_rate_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_rate_rule
    ADD CONSTRAINT tax_rate_rule_pkey PRIMARY KEY (id);


--
-- Name: tax_region tax_region_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT tax_region_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: IDX_account_holder_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_account_holder_deleted_at" ON public.account_holder USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_account_holder_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_account_holder_id_5cb3a0c0" ON public.customer_account_holder USING btree (account_holder_id);


--
-- Name: IDX_account_holder_provider_id_external_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_account_holder_provider_id_external_id_unique" ON public.account_holder USING btree (provider_id, external_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_adjustment_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_adjustment_item_id" ON public.cart_line_item_adjustment USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_adjustment_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_adjustment_shipping_method_id" ON public.cart_shipping_method_adjustment USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_api_key_deleted_at" ON public.api_key USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_token_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_api_key_token_unique" ON public.api_key USING btree (token);


--
-- Name: IDX_api_key_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_api_key_type" ON public.api_key USING btree (type);


--
-- Name: IDX_application_method_allocation; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_application_method_allocation" ON public.promotion_application_method USING btree (allocation);


--
-- Name: IDX_application_method_target_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_application_method_target_type" ON public.promotion_application_method USING btree (target_type);


--
-- Name: IDX_application_method_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_application_method_type" ON public.promotion_application_method USING btree (type);


--
-- Name: IDX_auth_identity_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_auth_identity_deleted_at" ON public.auth_identity USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_campaign_budget_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_campaign_budget_type" ON public.promotion_campaign_budget USING btree (type);


--
-- Name: IDX_capture_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_capture_deleted_at" ON public.capture USING btree (deleted_at);


--
-- Name: IDX_capture_payment_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_capture_payment_id" ON public.capture USING btree (payment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_address_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_address_deleted_at" ON public.cart_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_billing_address_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_billing_address_id" ON public.cart USING btree (billing_address_id) WHERE ((deleted_at IS NULL) AND (billing_address_id IS NOT NULL));


--
-- Name: IDX_cart_credit_line_reference_reference_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_credit_line_reference_reference_id" ON public.credit_line USING btree (reference, reference_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_currency_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_currency_code" ON public.cart USING btree (currency_code);


--
-- Name: IDX_cart_customer_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_customer_id" ON public.cart USING btree (customer_id) WHERE ((deleted_at IS NULL) AND (customer_id IS NOT NULL));


--
-- Name: IDX_cart_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_deleted_at" ON public.cart USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_id_-4a39f6c9" ON public.cart_payment_collection USING btree (cart_id);


--
-- Name: IDX_cart_id_-71069c16; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_id_-71069c16" ON public.order_cart USING btree (cart_id);


--
-- Name: IDX_cart_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_id_-a9d4a70b" ON public.cart_promotion USING btree (cart_id);


--
-- Name: IDX_cart_line_item_adjustment_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_adjustment_deleted_at" ON public.cart_line_item_adjustment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_adjustment_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_adjustment_item_id" ON public.cart_line_item_adjustment USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_line_item_cart_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_cart_id" ON public.cart_line_item USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_line_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_deleted_at" ON public.cart_line_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_tax_line_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_tax_line_deleted_at" ON public.cart_line_item_tax_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_tax_line_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_line_item_tax_line_item_id" ON public.cart_line_item_tax_line USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_region_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_region_id" ON public.cart USING btree (region_id) WHERE ((deleted_at IS NULL) AND (region_id IS NOT NULL));


--
-- Name: IDX_cart_sales_channel_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_sales_channel_id" ON public.cart USING btree (sales_channel_id) WHERE ((deleted_at IS NULL) AND (sales_channel_id IS NOT NULL));


--
-- Name: IDX_cart_shipping_address_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_address_id" ON public.cart USING btree (shipping_address_id) WHERE ((deleted_at IS NULL) AND (shipping_address_id IS NOT NULL));


--
-- Name: IDX_cart_shipping_method_adjustment_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_adjustment_deleted_at" ON public.cart_shipping_method_adjustment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_adjustment_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_adjustment_shipping_method_id" ON public.cart_shipping_method_adjustment USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_shipping_method_cart_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_cart_id" ON public.cart_shipping_method USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_shipping_method_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_deleted_at" ON public.cart_shipping_method USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_tax_line_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_tax_line_deleted_at" ON public.cart_shipping_method_tax_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_tax_line_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_cart_shipping_method_tax_line_shipping_method_id" ON public.cart_shipping_method_tax_line USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_category_handle_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_category_handle_unique" ON public.product_category USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_collection_handle_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_collection_handle_unique" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_credit_line_cart_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_credit_line_cart_id" ON public.credit_line USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_credit_line_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_credit_line_deleted_at" ON public.credit_line USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_address_customer_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_address_customer_id" ON public.customer_address USING btree (customer_id);


--
-- Name: IDX_customer_address_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_address_deleted_at" ON public.customer_address USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_address_unique_customer_billing; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_customer_address_unique_customer_billing" ON public.customer_address USING btree (customer_id) WHERE (is_default_billing = true);


--
-- Name: IDX_customer_address_unique_customer_shipping; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_customer_address_unique_customer_shipping" ON public.customer_address USING btree (customer_id) WHERE (is_default_shipping = true);


--
-- Name: IDX_customer_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_deleted_at" ON public.customer USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_email_has_account_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_customer_email_has_account_unique" ON public.customer USING btree (email, has_account) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_customer_customer_group_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_group_customer_customer_group_id" ON public.customer_group_customer USING btree (customer_group_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_customer_customer_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_group_customer_customer_id" ON public.customer_group_customer USING btree (customer_id);


--
-- Name: IDX_customer_group_customer_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_group_customer_deleted_at" ON public.customer_group_customer USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_group_deleted_at" ON public.customer_group USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_name; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_customer_group_name" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_name_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_customer_group_name_unique" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_customer_id_5cb3a0c0" ON public.customer_account_holder USING btree (customer_id);


--
-- Name: IDX_deleted_at_-1d67bae40; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-1e5992737; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-1e5992737" ON public.location_fulfillment_provider USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-31ea43a; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-31ea43a" ON public.return_fulfillment USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-4a39f6c9; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-4a39f6c9" ON public.cart_payment_collection USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-71069c16; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-71069c16" ON public.order_cart USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-71518339; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-71518339" ON public.order_promotion USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-a9d4a70b; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-a9d4a70b" ON public.cart_promotion USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-e88adb96; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-e88adb96" ON public.location_fulfillment_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-e8d2543e; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_-e8d2543e" ON public.order_fulfillment USING btree (deleted_at);


--
-- Name: IDX_deleted_at_17a262437; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_17a262437" ON public.product_shipping_profile USING btree (deleted_at);


--
-- Name: IDX_deleted_at_17b4c4e35; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_17b4c4e35" ON public.product_variant_inventory_item USING btree (deleted_at);


--
-- Name: IDX_deleted_at_1c934dab0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_1c934dab0" ON public.region_payment_provider USING btree (deleted_at);


--
-- Name: IDX_deleted_at_20b454295; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_20b454295" ON public.product_sales_channel USING btree (deleted_at);


--
-- Name: IDX_deleted_at_26d06f470; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_26d06f470" ON public.sales_channel_stock_location USING btree (deleted_at);


--
-- Name: IDX_deleted_at_52b23597; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_52b23597" ON public.product_variant_price_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_5cb3a0c0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_5cb3a0c0" ON public.customer_account_holder USING btree (deleted_at);


--
-- Name: IDX_deleted_at_ba32fa9c; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_ba32fa9c" ON public.shipping_option_price_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_f42b9949; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_deleted_at_f42b9949" ON public.order_payment_collection USING btree (deleted_at);


--
-- Name: IDX_fulfillment_address_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_address_deleted_at" ON public.fulfillment_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_deleted_at" ON public.fulfillment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_id_-31ea43a; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_id_-31ea43a" ON public.return_fulfillment USING btree (fulfillment_id);


--
-- Name: IDX_fulfillment_id_-e8d2543e; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_id_-e8d2543e" ON public.order_fulfillment USING btree (fulfillment_id);


--
-- Name: IDX_fulfillment_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_item_deleted_at" ON public.fulfillment_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_item_fulfillment_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_item_fulfillment_id" ON public.fulfillment_item USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_item_inventory_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_item_inventory_item_id" ON public.fulfillment_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_item_line_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_item_line_item_id" ON public.fulfillment_item USING btree (line_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_label_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_label_deleted_at" ON public.fulfillment_label USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_label_fulfillment_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_label_fulfillment_id" ON public.fulfillment_label USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_location_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_location_id" ON public.fulfillment USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_provider_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_provider_deleted_at" ON public.fulfillment_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_provider_id_-1e5992737; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_provider_id_-1e5992737" ON public.location_fulfillment_provider USING btree (fulfillment_provider_id);


--
-- Name: IDX_fulfillment_set_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_set_deleted_at" ON public.fulfillment_set USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_set_id_-e88adb96; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_set_id_-e88adb96" ON public.location_fulfillment_set USING btree (fulfillment_set_id);


--
-- Name: IDX_fulfillment_set_name_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_fulfillment_set_name_unique" ON public.fulfillment_set USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_shipping_option_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_fulfillment_shipping_option_id" ON public.fulfillment USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_geo_zone_city; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_geo_zone_city" ON public.geo_zone USING btree (city) WHERE ((deleted_at IS NULL) AND (city IS NOT NULL));


--
-- Name: IDX_geo_zone_country_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_geo_zone_country_code" ON public.geo_zone USING btree (country_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_geo_zone_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_geo_zone_deleted_at" ON public.geo_zone USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_geo_zone_province_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_geo_zone_province_code" ON public.geo_zone USING btree (province_code) WHERE ((deleted_at IS NULL) AND (province_code IS NOT NULL));


--
-- Name: IDX_geo_zone_service_zone_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_geo_zone_service_zone_id" ON public.geo_zone USING btree (service_zone_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_id_-1d67bae40; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (id);


--
-- Name: IDX_id_-1e5992737; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-1e5992737" ON public.location_fulfillment_provider USING btree (id);


--
-- Name: IDX_id_-31ea43a; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-31ea43a" ON public.return_fulfillment USING btree (id);


--
-- Name: IDX_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-4a39f6c9" ON public.cart_payment_collection USING btree (id);


--
-- Name: IDX_id_-71069c16; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-71069c16" ON public.order_cart USING btree (id);


--
-- Name: IDX_id_-71518339; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-71518339" ON public.order_promotion USING btree (id);


--
-- Name: IDX_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-a9d4a70b" ON public.cart_promotion USING btree (id);


--
-- Name: IDX_id_-e88adb96; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-e88adb96" ON public.location_fulfillment_set USING btree (id);


--
-- Name: IDX_id_-e8d2543e; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_-e8d2543e" ON public.order_fulfillment USING btree (id);


--
-- Name: IDX_id_17a262437; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_17a262437" ON public.product_shipping_profile USING btree (id);


--
-- Name: IDX_id_17b4c4e35; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (id);


--
-- Name: IDX_id_1c934dab0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_1c934dab0" ON public.region_payment_provider USING btree (id);


--
-- Name: IDX_id_20b454295; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_20b454295" ON public.product_sales_channel USING btree (id);


--
-- Name: IDX_id_26d06f470; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_26d06f470" ON public.sales_channel_stock_location USING btree (id);


--
-- Name: IDX_id_52b23597; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_52b23597" ON public.product_variant_price_set USING btree (id);


--
-- Name: IDX_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_5cb3a0c0" ON public.customer_account_holder USING btree (id);


--
-- Name: IDX_id_ba32fa9c; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_ba32fa9c" ON public.shipping_option_price_set USING btree (id);


--
-- Name: IDX_id_f42b9949; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_id_f42b9949" ON public.order_payment_collection USING btree (id);


--
-- Name: IDX_image_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_image_deleted_at" ON public.image USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_inventory_item_deleted_at" ON public.inventory_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_inventory_item_id_17b4c4e35; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_inventory_item_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (inventory_item_id);


--
-- Name: IDX_inventory_item_sku; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_inventory_item_sku" ON public.inventory_item USING btree (sku) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_inventory_level_deleted_at" ON public.inventory_level USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_inventory_level_inventory_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_inventory_level_inventory_item_id" ON public.inventory_level USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_item_location; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_inventory_level_item_location" ON public.inventory_level USING btree (inventory_item_id, location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_location_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_inventory_level_location_id" ON public.inventory_level USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_location_id_inventory_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_inventory_level_location_id_inventory_item_id" ON public.inventory_level USING btree (inventory_item_id, location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_invite_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_invite_deleted_at" ON public.invite USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_invite_email_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_invite_email_unique" ON public.invite USING btree (email) WHERE (deleted_at IS NULL);


--
-- Name: IDX_invite_token; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_invite_token" ON public.invite USING btree (token) WHERE (deleted_at IS NULL);


--
-- Name: IDX_line_item_adjustment_promotion_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_adjustment_promotion_id" ON public.cart_line_item_adjustment USING btree (promotion_id) WHERE ((deleted_at IS NULL) AND (promotion_id IS NOT NULL));


--
-- Name: IDX_line_item_cart_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_cart_id" ON public.cart_line_item USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_line_item_product_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_product_id" ON public.cart_line_item USING btree (product_id) WHERE ((deleted_at IS NULL) AND (product_id IS NOT NULL));


--
-- Name: IDX_line_item_product_type_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_product_type_id" ON public.cart_line_item USING btree (product_type_id) WHERE ((deleted_at IS NULL) AND (product_type_id IS NOT NULL));


--
-- Name: IDX_line_item_tax_line_tax_rate_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_tax_line_tax_rate_id" ON public.cart_line_item_tax_line USING btree (tax_rate_id) WHERE ((deleted_at IS NULL) AND (tax_rate_id IS NOT NULL));


--
-- Name: IDX_line_item_variant_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_line_item_variant_id" ON public.cart_line_item USING btree (variant_id) WHERE ((deleted_at IS NULL) AND (variant_id IS NOT NULL));


--
-- Name: IDX_notification_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_notification_deleted_at" ON public.notification USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_idempotency_key_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_notification_idempotency_key_unique" ON public.notification USING btree (idempotency_key) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_provider_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_notification_provider_deleted_at" ON public.notification_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_provider_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_notification_provider_id" ON public.notification USING btree (provider_id);


--
-- Name: IDX_notification_receiver_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_notification_receiver_id" ON public.notification USING btree (receiver_id);


--
-- Name: IDX_option_product_id_title_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_option_product_id_title_unique" ON public.product_option USING btree (product_id, title) WHERE (deleted_at IS NULL);


--
-- Name: IDX_option_value_option_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_option_value_option_id_unique" ON public.product_option_value USING btree (option_id, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_address_customer_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_address_customer_id" ON public.order_address USING btree (customer_id);


--
-- Name: IDX_order_address_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_address_deleted_at" ON public.order_address USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_billing_address_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_billing_address_id" ON public."order" USING btree (billing_address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_action_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_claim_id" ON public.order_change_action USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_action_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_deleted_at" ON public.order_change_action USING btree (deleted_at);


--
-- Name: IDX_order_change_action_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_exchange_id" ON public.order_change_action USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_action_order_change_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_order_change_id" ON public.order_change_action USING btree (order_change_id);


--
-- Name: IDX_order_change_action_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_order_id" ON public.order_change_action USING btree (order_id);


--
-- Name: IDX_order_change_action_ordering; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_ordering" ON public.order_change_action USING btree (ordering);


--
-- Name: IDX_order_change_action_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_action_return_id" ON public.order_change_action USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_change_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_change_type" ON public.order_change USING btree (change_type);


--
-- Name: IDX_order_change_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_claim_id" ON public.order_change USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_deleted_at" ON public.order_change USING btree (deleted_at);


--
-- Name: IDX_order_change_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_exchange_id" ON public.order_change USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_order_id" ON public.order_change USING btree (order_id);


--
-- Name: IDX_order_change_order_id_version; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_order_id_version" ON public.order_change USING btree (order_id, version);


--
-- Name: IDX_order_change_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_return_id" ON public.order_change USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_status; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_change_status" ON public.order_change USING btree (status);


--
-- Name: IDX_order_claim_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_deleted_at" ON public.order_claim USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_display_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_display_id" ON public.order_claim USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_item_claim_id" ON public.order_claim_item USING btree (claim_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_item_deleted_at" ON public.order_claim_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_image_claim_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_item_image_claim_item_id" ON public.order_claim_item_image USING btree (claim_item_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_claim_item_image_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_item_image_deleted_at" ON public.order_claim_item_image USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_claim_item_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_item_item_id" ON public.order_claim_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_order_id" ON public.order_claim USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_claim_return_id" ON public.order_claim USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_credit_line_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_credit_line_deleted_at" ON public.order_credit_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_credit_line_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_credit_line_order_id" ON public.order_credit_line USING btree (order_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_currency_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_customer_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_customer_id" ON public."order" USING btree (customer_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_deleted_at" ON public."order" USING btree (deleted_at);


--
-- Name: IDX_order_display_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_display_id" ON public."order" USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_deleted_at" ON public.order_exchange USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_display_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_display_id" ON public.order_exchange USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_item_deleted_at" ON public.order_exchange_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_item_exchange_id" ON public.order_exchange_item USING btree (exchange_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_item_item_id" ON public.order_exchange_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_order_id" ON public.order_exchange USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_exchange_return_id" ON public.order_exchange USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_id_-71069c16; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_id_-71069c16" ON public.order_cart USING btree (order_id);


--
-- Name: IDX_order_id_-71518339; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_id_-71518339" ON public.order_promotion USING btree (order_id);


--
-- Name: IDX_order_id_-e8d2543e; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_id_-e8d2543e" ON public.order_fulfillment USING btree (order_id);


--
-- Name: IDX_order_id_f42b9949; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_id_f42b9949" ON public.order_payment_collection USING btree (order_id);


--
-- Name: IDX_order_is_draft_order; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_is_draft_order" ON public."order" USING btree (is_draft_order) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_item_deleted_at" ON public.order_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_item_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_item_item_id" ON public.order_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_item_order_id" ON public.order_item USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_order_id_version; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_item_order_id_version" ON public.order_item USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_adjustment_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_line_item_adjustment_item_id" ON public.order_line_item_adjustment USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_product_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_line_item_product_id" ON public.order_line_item USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_tax_line_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_line_item_tax_line_item_id" ON public.order_line_item_tax_line USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_variant_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_line_item_variant_id" ON public.order_line_item USING btree (variant_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_region_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_region_id" ON public."order" USING btree (region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_address_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_address_id" ON public."order" USING btree (shipping_address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_claim_id" ON public.order_shipping USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_shipping_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_deleted_at" ON public.order_shipping USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_shipping_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_exchange_id" ON public.order_shipping USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_shipping_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_item_id" ON public.order_shipping USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_adjustment_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_method_adjustment_shipping_method_id" ON public.order_shipping_method_adjustment USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_shipping_option_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_method_shipping_option_id" ON public.order_shipping_method USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_tax_line_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_method_tax_line_shipping_method_id" ON public.order_shipping_method_tax_line USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_order_id" ON public.order_shipping USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_order_id_version; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_order_id_version" ON public.order_shipping USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_shipping_return_id" ON public.order_shipping USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_summary_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_summary_deleted_at" ON public.order_summary USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_summary_order_id_version; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_summary_order_id_version" ON public.order_summary USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_claim_id" ON public.order_transaction USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_transaction_currency_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_currency_code" ON public.order_transaction USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_exchange_id" ON public.order_transaction USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_transaction_order_id_version; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_order_id_version" ON public.order_transaction USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_reference_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_reference_id" ON public.order_transaction USING btree (reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_order_transaction_return_id" ON public.order_transaction USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_payment_collection_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_collection_deleted_at" ON public.payment_collection USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_payment_collection_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_collection_id_-4a39f6c9" ON public.cart_payment_collection USING btree (payment_collection_id);


--
-- Name: IDX_payment_collection_id_f42b9949; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_collection_id_f42b9949" ON public.order_payment_collection USING btree (payment_collection_id);


--
-- Name: IDX_payment_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_deleted_at" ON public.payment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_payment_payment_collection_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_payment_collection_id" ON public.payment USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_payment_session_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_payment_session_id" ON public.payment USING btree (payment_session_id);


--
-- Name: IDX_payment_payment_session_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_payment_payment_session_id_unique" ON public.payment USING btree (payment_session_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_provider_deleted_at" ON public.payment_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_provider_id" ON public.payment USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_id_1c934dab0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_provider_id_1c934dab0" ON public.region_payment_provider USING btree (payment_provider_id);


--
-- Name: IDX_payment_session_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_session_deleted_at" ON public.payment_session USING btree (deleted_at);


--
-- Name: IDX_payment_session_payment_collection_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_payment_session_payment_collection_id" ON public.payment_session USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_currency_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_currency_code" ON public.price USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_deleted_at" ON public.price USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_list_deleted_at" ON public.price_list USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_rule_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_list_rule_deleted_at" ON public.price_list_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_rule_price_list_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_list_rule_price_list_id" ON public.price_list_rule USING btree (price_list_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_preference_attribute_value; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_price_preference_attribute_value" ON public.price_preference USING btree (attribute, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_preference_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_preference_deleted_at" ON public.price_preference USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_price_list_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_price_list_id" ON public.price USING btree (price_list_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_price_set_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_price_set_id" ON public.price USING btree (price_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_rule_deleted_at" ON public.price_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_rule_operator; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_rule_operator" ON public.price_rule USING btree (operator);


--
-- Name: IDX_price_rule_price_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_rule_price_id" ON public.price_rule USING btree (price_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_price_id_attribute_operator_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_price_rule_price_id_attribute_operator_unique" ON public.price_rule USING btree (price_id, attribute, operator) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_set_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_set_deleted_at" ON public.price_set USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_set_id_52b23597; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_set_id_52b23597" ON public.product_variant_price_set USING btree (price_set_id);


--
-- Name: IDX_price_set_id_ba32fa9c; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_price_set_id_ba32fa9c" ON public.shipping_option_price_set USING btree (price_set_id);


--
-- Name: IDX_product_category_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_category_deleted_at" ON public.product_collection USING btree (deleted_at);


--
-- Name: IDX_product_category_parent_category_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_category_parent_category_id" ON public.product_category USING btree (parent_category_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_category_path; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_collection_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_collection_deleted_at" ON public.product_collection USING btree (deleted_at);


--
-- Name: IDX_product_collection_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_collection_id" ON public.product USING btree (collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_deleted_at" ON public.product USING btree (deleted_at);


--
-- Name: IDX_product_handle_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_product_handle_unique" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_id_17a262437; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_id_17a262437" ON public.product_shipping_profile USING btree (product_id);


--
-- Name: IDX_product_id_20b454295; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_id_20b454295" ON public.product_sales_channel USING btree (product_id);


--
-- Name: IDX_product_image_url; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_image_url" ON public.image USING btree (url) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_option_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_option_deleted_at" ON public.product_option USING btree (deleted_at);


--
-- Name: IDX_product_option_product_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_option_product_id" ON public.product_option USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_option_value_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_option_value_deleted_at" ON public.product_option_value USING btree (deleted_at);


--
-- Name: IDX_product_option_value_option_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_option_value_option_id" ON public.product_option_value USING btree (option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_tag_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_tag_deleted_at" ON public.product_tag USING btree (deleted_at);


--
-- Name: IDX_product_type_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_type_deleted_at" ON public.product_type USING btree (deleted_at);


--
-- Name: IDX_product_type_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_type_id" ON public.product USING btree (type_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_barcode_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_product_variant_barcode_unique" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_variant_deleted_at" ON public.product_variant USING btree (deleted_at);


--
-- Name: IDX_product_variant_ean_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_product_variant_ean_unique" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_product_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_product_variant_product_id" ON public.product_variant USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_sku_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_product_variant_sku_unique" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_upc_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_product_variant_upc_unique" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_application_method_currency_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_application_method_currency_code" ON public.promotion_application_method USING btree (currency_code) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_promotion_application_method_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_application_method_deleted_at" ON public.promotion_application_method USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_application_method_promotion_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_promotion_application_method_promotion_id_unique" ON public.promotion_application_method USING btree (promotion_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_campaign_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_promotion_campaign_budget_campaign_id_unique" ON public.promotion_campaign_budget USING btree (campaign_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_campaign_budget_deleted_at" ON public.promotion_campaign_budget USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_campaign_identifier_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_promotion_campaign_campaign_identifier_unique" ON public.promotion_campaign USING btree (campaign_identifier) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_campaign_deleted_at" ON public.promotion_campaign USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_campaign_id" ON public.promotion USING btree (campaign_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_deleted_at" ON public.promotion USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_id_-71518339; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_id_-71518339" ON public.order_promotion USING btree (promotion_id);


--
-- Name: IDX_promotion_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_id_-a9d4a70b" ON public.cart_promotion USING btree (promotion_id);


--
-- Name: IDX_promotion_rule_attribute; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_rule_attribute" ON public.promotion_rule USING btree (attribute);


--
-- Name: IDX_promotion_rule_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_rule_deleted_at" ON public.promotion_rule USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_operator; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_rule_operator" ON public.promotion_rule USING btree (operator);


--
-- Name: IDX_promotion_rule_value_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_rule_value_deleted_at" ON public.promotion_rule_value USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_value_promotion_rule_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_rule_value_promotion_rule_id" ON public.promotion_rule_value USING btree (promotion_rule_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_status; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_status" ON public.promotion USING btree (status) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_type; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_promotion_type" ON public.promotion USING btree (type);


--
-- Name: IDX_provider_identity_auth_identity_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_provider_identity_auth_identity_id" ON public.provider_identity USING btree (auth_identity_id);


--
-- Name: IDX_provider_identity_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_provider_identity_deleted_at" ON public.provider_identity USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_provider_identity_provider_entity_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_provider_identity_provider_entity_id" ON public.provider_identity USING btree (entity_id, provider);


--
-- Name: IDX_publishable_key_id_-1d67bae40; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_publishable_key_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (publishable_key_id);


--
-- Name: IDX_refund_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_refund_deleted_at" ON public.refund USING btree (deleted_at);


--
-- Name: IDX_refund_payment_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_refund_reason_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_refund_reason_deleted_at" ON public.refund_reason USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_refund_refund_reason_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_refund_refund_reason_id" ON public.refund USING btree (refund_reason_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_region_country_deleted_at" ON public.region_country USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_region_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_region_country_region_id" ON public.region_country USING btree (region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_region_id_iso_2_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_region_country_region_id_iso_2_unique" ON public.region_country USING btree (region_id, iso_2);


--
-- Name: IDX_region_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_region_deleted_at" ON public.region USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_region_id_1c934dab0; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_region_id_1c934dab0" ON public.region_payment_provider USING btree (region_id);


--
-- Name: IDX_reservation_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_reservation_item_deleted_at" ON public.reservation_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_reservation_item_inventory_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_reservation_item_inventory_item_id" ON public.reservation_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_reservation_item_line_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_reservation_item_line_item_id" ON public.reservation_item USING btree (line_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_reservation_item_location_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_reservation_item_location_id" ON public.reservation_item USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_claim_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_claim_id" ON public.return USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_return_display_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_display_id" ON public.return USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_exchange_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_exchange_id" ON public.return USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_return_id_-31ea43a; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_id_-31ea43a" ON public.return_fulfillment USING btree (return_id);


--
-- Name: IDX_return_item_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_item_deleted_at" ON public.return_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_item_item_id" ON public.return_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_reason_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_item_reason_id" ON public.return_item USING btree (reason_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_return_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_item_return_id" ON public.return_item USING btree (return_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_order_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_return_order_id" ON public.return USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_reason_value; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_return_reason_value" ON public.return_reason USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_sales_channel_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_sales_channel_deleted_at" ON public.sales_channel USING btree (deleted_at);


--
-- Name: IDX_sales_channel_id_-1d67bae40; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_sales_channel_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (sales_channel_id);


--
-- Name: IDX_sales_channel_id_20b454295; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_sales_channel_id_20b454295" ON public.product_sales_channel USING btree (sales_channel_id);


--
-- Name: IDX_sales_channel_id_26d06f470; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_sales_channel_id_26d06f470" ON public.sales_channel_stock_location USING btree (sales_channel_id);


--
-- Name: IDX_service_zone_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_service_zone_deleted_at" ON public.service_zone USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_service_zone_fulfillment_set_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_service_zone_fulfillment_set_id" ON public.service_zone USING btree (fulfillment_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_service_zone_name_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_service_zone_name_unique" ON public.service_zone USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_method_adjustment_promotion_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_method_adjustment_promotion_id" ON public.cart_shipping_method_adjustment USING btree (promotion_id) WHERE ((deleted_at IS NULL) AND (promotion_id IS NOT NULL));


--
-- Name: IDX_shipping_method_cart_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_method_cart_id" ON public.cart_shipping_method USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_method_option_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_method_option_id" ON public.cart_shipping_method USING btree (shipping_option_id) WHERE ((deleted_at IS NULL) AND (shipping_option_id IS NOT NULL));


--
-- Name: IDX_shipping_method_tax_line_tax_rate_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_method_tax_line_tax_rate_id" ON public.cart_shipping_method_tax_line USING btree (tax_rate_id) WHERE ((deleted_at IS NULL) AND (tax_rate_id IS NOT NULL));


--
-- Name: IDX_shipping_option_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_deleted_at" ON public.shipping_option USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_option_id_ba32fa9c; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_id_ba32fa9c" ON public.shipping_option_price_set USING btree (shipping_option_id);


--
-- Name: IDX_shipping_option_provider_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_provider_id" ON public.shipping_option USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_rule_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_rule_deleted_at" ON public.shipping_option_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_option_rule_shipping_option_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_rule_shipping_option_id" ON public.shipping_option_rule USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_service_zone_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_service_zone_id" ON public.shipping_option USING btree (service_zone_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_shipping_profile_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_shipping_profile_id" ON public.shipping_option USING btree (shipping_profile_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_type_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_option_type_deleted_at" ON public.shipping_option_type USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_profile_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_profile_deleted_at" ON public.shipping_profile USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_profile_id_17a262437; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_shipping_profile_id_17a262437" ON public.product_shipping_profile USING btree (shipping_profile_id);


--
-- Name: IDX_shipping_profile_name_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_shipping_profile_name_unique" ON public.shipping_profile USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_single_default_region; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_single_default_region" ON public.tax_rate USING btree (tax_region_id) WHERE ((is_default = true) AND (deleted_at IS NULL));


--
-- Name: IDX_stock_location_address_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_stock_location_address_deleted_at" ON public.stock_location_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_stock_location_address_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_stock_location_address_id_unique" ON public.stock_location USING btree (address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_stock_location_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_stock_location_deleted_at" ON public.stock_location USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_stock_location_id_-1e5992737; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_stock_location_id_-1e5992737" ON public.location_fulfillment_provider USING btree (stock_location_id);


--
-- Name: IDX_stock_location_id_-e88adb96; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_stock_location_id_-e88adb96" ON public.location_fulfillment_set USING btree (stock_location_id);


--
-- Name: IDX_stock_location_id_26d06f470; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_stock_location_id_26d06f470" ON public.sales_channel_stock_location USING btree (stock_location_id);


--
-- Name: IDX_store_currency_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_store_currency_deleted_at" ON public.store_currency USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_store_currency_store_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_store_currency_store_id" ON public.store_currency USING btree (store_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_store_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_store_deleted_at" ON public.store USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tag_value_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_tag_value_unique" ON public.product_tag USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_line_item_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_line_item_id" ON public.cart_line_item_tax_line USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_line_shipping_method_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_line_shipping_method_id" ON public.cart_shipping_method_tax_line USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_provider_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_provider_deleted_at" ON public.tax_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_rate_deleted_at" ON public.tax_rate USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_rate_rule_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_rate_rule_deleted_at" ON public.tax_rate_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_rate_rule_reference_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_rate_rule_reference_id" ON public.tax_rate_rule USING btree (reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_rule_tax_rate_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_rate_rule_tax_rate_id" ON public.tax_rate_rule USING btree (tax_rate_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_rule_unique_rate_reference; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_tax_rate_rule_unique_rate_reference" ON public.tax_rate_rule USING btree (tax_rate_id, reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_tax_region_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_rate_tax_region_id" ON public.tax_rate USING btree (tax_region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_region_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_region_deleted_at" ON public.tax_region USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_region_parent_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_region_parent_id" ON public.tax_region USING btree (parent_id);


--
-- Name: IDX_tax_region_provider_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_tax_region_provider_id" ON public.tax_region USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_region_unique_country_nullable_province; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_tax_region_unique_country_nullable_province" ON public.tax_region USING btree (country_code) WHERE ((province_code IS NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_tax_region_unique_country_province; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_tax_region_unique_country_province" ON public.tax_region USING btree (country_code, province_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_type_value_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_type_value_unique" ON public.product_type USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_unique_promotion_code; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_unique_promotion_code" ON public.promotion USING btree (code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_user_deleted_at" ON public."user" USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_user_email_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_user_email_unique" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);


--
-- Name: IDX_variant_id_17b4c4e35; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_variant_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (variant_id);


--
-- Name: IDX_variant_id_52b23597; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_variant_id_52b23597" ON public.product_variant_price_set USING btree (variant_id);


--
-- Name: IDX_workflow_execution_deleted_at; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_workflow_execution_deleted_at" ON public.workflow_execution USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_workflow_execution_id" ON public.workflow_execution USING btree (id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_state; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_workflow_execution_state" ON public.workflow_execution USING btree (state) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_transaction_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_workflow_execution_transaction_id" ON public.workflow_execution USING btree (transaction_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_workflow_id; Type: INDEX; Schema: public; Owner: superuser
--

CREATE INDEX "IDX_workflow_execution_workflow_id" ON public.workflow_execution USING btree (workflow_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_workflow_id_transaction_id_unique; Type: INDEX; Schema: public; Owner: superuser
--

CREATE UNIQUE INDEX "IDX_workflow_execution_workflow_id_transaction_id_unique" ON public.workflow_execution USING btree (workflow_id, transaction_id) WHERE (deleted_at IS NULL);


--
-- Name: tax_rate_rule FK_tax_rate_rule_tax_rate_id; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_rate_rule
    ADD CONSTRAINT "FK_tax_rate_rule_tax_rate_id" FOREIGN KEY (tax_rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;


--
-- Name: tax_rate FK_tax_rate_tax_region_id; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_tax_rate_tax_region_id" FOREIGN KEY (tax_region_id) REFERENCES public.tax_region(id) ON DELETE CASCADE;


--
-- Name: tax_region FK_tax_region_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT "FK_tax_region_parent_id" FOREIGN KEY (parent_id) REFERENCES public.tax_region(id) ON DELETE CASCADE;


--
-- Name: tax_region FK_tax_region_provider_id; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT "FK_tax_region_provider_id" FOREIGN KEY (provider_id) REFERENCES public.tax_provider(id) ON DELETE SET NULL;


--
-- Name: application_method_buy_rules application_method_buy_rules_application_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_application_method_id_foreign FOREIGN KEY (application_method_id) REFERENCES public.promotion_application_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_buy_rules application_method_buy_rules_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_target_rules application_method_target_rules_application_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_application_method_id_foreign FOREIGN KEY (application_method_id) REFERENCES public.promotion_application_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_target_rules application_method_target_rules_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: capture capture_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.capture
    ADD CONSTRAINT capture_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart cart_billing_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_billing_address_id_foreign FOREIGN KEY (billing_address_id) REFERENCES public.cart_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cart_line_item_adjustment cart_line_item_adjustment_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item_adjustment
    ADD CONSTRAINT cart_line_item_adjustment_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.cart_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_line_item cart_line_item_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item
    ADD CONSTRAINT cart_line_item_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_line_item_tax_line cart_line_item_tax_line_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_line_item_tax_line
    ADD CONSTRAINT cart_line_item_tax_line_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.cart_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart cart_shipping_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_shipping_address_id_foreign FOREIGN KEY (shipping_address_id) REFERENCES public.cart_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cart_shipping_method_adjustment cart_shipping_method_adjustment_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method_adjustment
    ADD CONSTRAINT cart_shipping_method_adjustment_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.cart_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_shipping_method cart_shipping_method_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method
    ADD CONSTRAINT cart_shipping_method_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_shipping_method_tax_line cart_shipping_method_tax_line_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.cart_shipping_method_tax_line
    ADD CONSTRAINT cart_shipping_method_tax_line_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.cart_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: credit_line credit_line_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.credit_line
    ADD CONSTRAINT credit_line_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE;


--
-- Name: customer_address customer_address_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_address
    ADD CONSTRAINT customer_address_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: customer_group_customer customer_group_customer_customer_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_customer_group_id_foreign FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: customer_group_customer customer_group_customer_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment fulfillment_delivery_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_delivery_address_id_foreign FOREIGN KEY (delivery_address_id) REFERENCES public.fulfillment_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: fulfillment_item fulfillment_item_fulfillment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT fulfillment_item_fulfillment_id_foreign FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment_label fulfillment_label_fulfillment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment_label
    ADD CONSTRAINT fulfillment_label_fulfillment_id_foreign FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment fulfillment_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: fulfillment fulfillment_shipping_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_shipping_option_id_foreign FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: geo_zone geo_zone_service_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.geo_zone
    ADD CONSTRAINT geo_zone_service_zone_id_foreign FOREIGN KEY (service_zone_id) REFERENCES public.service_zone(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: image image_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: inventory_level inventory_level_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.inventory_level
    ADD CONSTRAINT inventory_level_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: notification notification_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: order order_billing_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_billing_address_id_foreign FOREIGN KEY (billing_address_id) REFERENCES public.order_address(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_change_action order_change_action_order_change_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_change_action
    ADD CONSTRAINT order_change_action_order_change_id_foreign FOREIGN KEY (order_change_id) REFERENCES public.order_change(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_change order_change_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_change
    ADD CONSTRAINT order_change_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_credit_line order_credit_line_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_credit_line
    ADD CONSTRAINT order_credit_line_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE;


--
-- Name: order_item order_item_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_item order_item_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item_adjustment order_line_item_adjustment_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item_adjustment
    ADD CONSTRAINT order_line_item_adjustment_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item_tax_line order_line_item_tax_line_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item_tax_line
    ADD CONSTRAINT order_line_item_tax_line_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item order_line_item_totals_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_line_item
    ADD CONSTRAINT order_line_item_totals_id_foreign FOREIGN KEY (totals_id) REFERENCES public.order_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order order_shipping_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_shipping_address_id_foreign FOREIGN KEY (shipping_address_id) REFERENCES public.order_address(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_shipping_method_adjustment order_shipping_method_adjustment_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping_method_adjustment
    ADD CONSTRAINT order_shipping_method_adjustment_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.order_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_shipping_method_tax_line order_shipping_method_tax_line_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping_method_tax_line
    ADD CONSTRAINT order_shipping_method_tax_line_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.order_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_shipping order_shipping_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_shipping
    ADD CONSTRAINT order_shipping_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_transaction order_transaction_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.order_transaction
    ADD CONSTRAINT order_transaction_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_payment_col_aa276_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_payment_col_aa276_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_payment_pro_2d555_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_payment_pro_2d555_foreign FOREIGN KEY (payment_provider_id) REFERENCES public.payment_provider(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment payment_payment_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_payment_collection_id_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_session payment_session_payment_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT payment_session_payment_collection_id_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price_list_rule price_list_rule_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_list_rule
    ADD CONSTRAINT price_list_rule_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price price_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price price_price_set_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_price_set_id_foreign FOREIGN KEY (price_set_id) REFERENCES public.price_set(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price_rule price_rule_price_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT price_rule_price_id_foreign FOREIGN KEY (price_id) REFERENCES public.price(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category product_category_parent_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_parent_category_id_foreign FOREIGN KEY (parent_category_id) REFERENCES public.product_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category_product product_category_product_product_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_product_category_id_foreign FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category_product product_category_product_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product product_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_collection_id_foreign FOREIGN KEY (collection_id) REFERENCES public.product_collection(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: product_option product_option_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT product_option_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_option_value product_option_value_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT product_option_value_option_id_foreign FOREIGN KEY (option_id) REFERENCES public.product_option(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_tags product_tags_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_tags product_tags_product_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_product_tag_id_foreign FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product product_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.product_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: product_variant_option product_variant_option_option_value_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_option_value_id_foreign FOREIGN KEY (option_value_id) REFERENCES public.product_option_value(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_option product_variant_option_variant_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_variant_id_foreign FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant product_variant_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_application_method promotion_application_method_promotion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_application_method
    ADD CONSTRAINT promotion_application_method_promotion_id_foreign FOREIGN KEY (promotion_id) REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_campaign_budget promotion_campaign_budget_campaign_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_campaign_budget
    ADD CONSTRAINT promotion_campaign_budget_campaign_id_foreign FOREIGN KEY (campaign_id) REFERENCES public.promotion_campaign(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion promotion_campaign_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_campaign_id_foreign FOREIGN KEY (campaign_id) REFERENCES public.promotion_campaign(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: promotion_promotion_rule promotion_promotion_rule_promotion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_promotion_id_foreign FOREIGN KEY (promotion_id) REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_promotion_rule promotion_promotion_rule_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_rule_value promotion_rule_value_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.promotion_rule_value
    ADD CONSTRAINT promotion_rule_value_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: provider_identity provider_identity_auth_identity_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.provider_identity
    ADD CONSTRAINT provider_identity_auth_identity_id_foreign FOREIGN KEY (auth_identity_id) REFERENCES public.auth_identity(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: refund refund_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_country region_country_region_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.region_country
    ADD CONSTRAINT region_country_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.region(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: reservation_item reservation_item_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.reservation_item
    ADD CONSTRAINT reservation_item_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: return_reason return_reason_parent_return_reason_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT return_reason_parent_return_reason_id_foreign FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);


--
-- Name: service_zone service_zone_fulfillment_set_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.service_zone
    ADD CONSTRAINT service_zone_fulfillment_set_id_foreign FOREIGN KEY (fulfillment_set_id) REFERENCES public.fulfillment_set(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: shipping_option_rule shipping_option_rule_shipping_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option_rule
    ADD CONSTRAINT shipping_option_rule_shipping_option_id_foreign FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_service_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_service_zone_id_foreign FOREIGN KEY (service_zone_id) REFERENCES public.service_zone(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_shipping_option_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_shipping_option_type_id_foreign FOREIGN KEY (shipping_option_type_id) REFERENCES public.shipping_option_type(id) ON UPDATE CASCADE;


--
-- Name: shipping_option shipping_option_shipping_profile_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_shipping_profile_id_foreign FOREIGN KEY (shipping_profile_id) REFERENCES public.shipping_profile(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_location stock_location_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT stock_location_address_id_foreign FOREIGN KEY (address_id) REFERENCES public.stock_location_address(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: store_currency store_currency_store_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: superuser
--

ALTER TABLE ONLY public.store_currency
    ADD CONSTRAINT store_currency_store_id_foreign FOREIGN KEY (store_id) REFERENCES public.store(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

