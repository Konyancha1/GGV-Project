-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 07:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ggv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `average_visit_per_visitor`
--

CREATE TABLE `average_visit_per_visitor` (
  `Visit_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `GGV_visa_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Number_of_visit` int(11) NOT NULL,
  `Total_duration_of_visit` int(11) NOT NULL,
  `Average_visit_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `Beneficiary_id` int(11) NOT NULL,
  `Project_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Beneficiary_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `board_of_director`
--

CREATE TABLE `board_of_director` (
  `Director_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Expert_id` int(11) NOT NULL,
  `Trust_Fund_id` int(11) NOT NULL,
  `First_name` char(50) NOT NULL,
  `Last_name` char(50) NOT NULL,
  `Nationality` char(50) NOT NULL,
  `Recommendation` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bond_issuer`
--

CREATE TABLE `bond_issuer` (
  `bond_issuer_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Issuer_name` char(50) NOT NULL,
  `Issuer_type` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bond_receiver`
--

CREATE TABLE `bond_receiver` (
  `bond_receiver_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `bond_issuer_id` int(11) NOT NULL,
  `receiver_name` char(50) NOT NULL,
  `receiver_type` char(50) NOT NULL,
  `Track_record` char(30) NOT NULL,
  `Priority_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bond_revenue_expense`
--

CREATE TABLE `bond_revenue_expense` (
  `Country_destination_id` int(11) NOT NULL,
  `bond_receiver_id` int(11) NOT NULL,
  `Project_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Weekly_expense` float NOT NULL,
  `Monthly_expense` float NOT NULL,
  `Annual_expense` float NOT NULL,
  `Bond_Category` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country_destination`
--

CREATE TABLE `country_destination` (
  `Country_destination_id` int(11) NOT NULL,
  `country_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `First_name` char(50) NOT NULL,
  `Last_Name` char(50) NOT NULL,
  `Email` char(50) NOT NULL,
  `Nationality` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `Customer_account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `password_` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `escrow_account`
--

CREATE TABLE `escrow_account` (
  `Escrow_Account_id` int(11) NOT NULL,
  `Receipt_info_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `esg_standard`
--

CREATE TABLE `esg_standard` (
  `ESG_id` int(11) NOT NULL,
  `ESG_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_fee_country`
--

CREATE TABLE `ggv_fee_country` (
  `GGV_fee_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `G20_country_fee` float DEFAULT NULL,
  `Non_G20_country_fee` float DEFAULT NULL,
  `Neighboring_country_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_number_of_purchase`
--

CREATE TABLE `ggv_number_of_purchase` (
  `GGV_number_of_purchase_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Number_of_purchase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_number_of_visitor`
--

CREATE TABLE `ggv_number_of_visitor` (
  `GGV_number_of_visitor_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Number_of_visitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_revenue`
--

CREATE TABLE `ggv_revenue` (
  `Revenue_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Weekly_amount` float NOT NULL,
  `Monthly_amount` float NOT NULL,
  `Annual_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_visa`
--

CREATE TABLE `ggv_visa` (
  `GGV_visa_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Receipt_info_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Nationality` char(50) NOT NULL,
  `First_Arrival_Date` date NOT NULL,
  `First_Departure_Date` date NOT NULL,
  `Second_Arrival_Date` date NOT NULL,
  `Second_Departure_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ggv_visits_per_visa`
--

CREATE TABLE `ggv_visits_per_visa` (
  `GGV_Visits_per_visa_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Preference_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Number_of_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `independent_panel_of_expert`
--

CREATE TABLE `independent_panel_of_expert` (
  `Expert_id` int(11) NOT NULL,
  `First_name` char(50) NOT NULL,
  `Last_name` char(50) NOT NULL,
  `Nationality` char(50) NOT NULL,
  `Recommendation` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `institution_strengthened`
--

CREATE TABLE `institution_strengthened` (
  `Institution_id` int(11) NOT NULL,
  `Project_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Institution_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

CREATE TABLE `investor` (
  `investor_id` int(11) NOT NULL,
  `Investor_name` char(50) NOT NULL,
  `Investor_type` char(50) NOT NULL,
  `Country` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `multilateral_development_bank`
--

CREATE TABLE `multilateral_development_bank` (
  `Multilateral_bank_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Multilateral_Development_bank_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `national_manager`
--

CREATE TABLE `national_manager` (
  `National_manager_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `First_name` char(50) NOT NULL,
  `Last_Name` char(50) NOT NULL,
  `Email` char(50) NOT NULL,
  `Nationality` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `national_manager_account`
--

CREATE TABLE `national_manager_account` (
  `National_manager_account_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `password_` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passport_detail`
--

CREATE TABLE `passport_detail` (
  `Passport_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Nationality` char(50) NOT NULL,
  `Expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `potential_bond_partner`
--

CREATE TABLE `potential_bond_partner` (
  `bond_Partners_id` int(11) NOT NULL,
  `ESG_id` int(11) NOT NULL,
  `Bond_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `preference_location`
--

CREATE TABLE `preference_location` (
  `Preference_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `County` char(50) NOT NULL,
  `City` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `Project_name` char(50) NOT NULL,
  `Project_category` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_contribution_to_ndc`
--

CREATE TABLE `project_contribution_to_ndc` (
  `Contribution_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Project_id` int(11) NOT NULL,
  `Contribution_summary` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_result`
--

CREATE TABLE `project_result` (
  `Result_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Project_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Beneficiary_id` int(11) NOT NULL,
  `Institution_id` int(11) NOT NULL,
  `Third_party_auditor_id` int(11) NOT NULL,
  `Income` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_info`
--

CREATE TABLE `receipt_info` (
  `Receipt_info_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `GGV_fee_id` int(11) NOT NULL,
  `Preference_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `third_party_auditor`
--

CREATE TABLE `third_party_auditor` (
  `Third_party_auditor_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Escrow_Account_id` int(11) NOT NULL,
  `Auditor_fname` char(50) NOT NULL,
  `Auditor_lname` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `total_bond_revenue_expenditure`
--

CREATE TABLE `total_bond_revenue_expenditure` (
  `Expenditure_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Weekly_expenditure_amount` float NOT NULL,
  `Monthly_expenditure_amount` float NOT NULL,
  `Annual_expenditure_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `total_ggv_visa_day`
--

CREATE TABLE `total_ggv_visa_day` (
  `GGV_Visa_days_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `GGV_visa_id` int(11) NOT NULL,
  `National_manager_id` int(11) NOT NULL,
  `Purchased_date` date NOT NULL,
  `Expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trust_fund`
--

CREATE TABLE `trust_fund` (
  `Trust_Fund_id` int(11) NOT NULL,
  `Country_destination_id` int(11) NOT NULL,
  `Preference_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visa_payment_history`
--

CREATE TABLE `visa_payment_history` (
  `Customer_payment_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `GGV_visa_id` int(11) NOT NULL,
  `Receipt_info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `average_visit_per_visitor`
--
ALTER TABLE `average_visit_per_visitor`
  ADD PRIMARY KEY (`Visit_id`),
  ADD KEY `Average_Visit_Per_Visitor_FK1` (`Country_destination_id`),
  ADD KEY `Average_Visit_Per_Visitor_FK2` (`customer_id`),
  ADD KEY `Average_Visit_Per_Visitor_FK3` (`GGV_visa_id`),
  ADD KEY `Average_Visit_Per_Visitor_FK4` (`National_manager_id`);

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`Beneficiary_id`),
  ADD UNIQUE KEY `Beneficiary_name` (`Beneficiary_name`),
  ADD KEY `Beneficiary_FK` (`Project_id`);

--
-- Indexes for table `board_of_director`
--
ALTER TABLE `board_of_director`
  ADD PRIMARY KEY (`Director_id`),
  ADD KEY `Board_of_Director_FK1` (`Country_destination_id`),
  ADD KEY `Board_of_Director_FK2` (`Expert_id`),
  ADD KEY `Board_of_Director_FK3` (`Trust_Fund_id`);

--
-- Indexes for table `bond_issuer`
--
ALTER TABLE `bond_issuer`
  ADD PRIMARY KEY (`bond_issuer_id`),
  ADD UNIQUE KEY `Issuer_name` (`Issuer_name`),
  ADD KEY `Bond_Issuer_FK` (`Country_destination_id`);

--
-- Indexes for table `bond_receiver`
--
ALTER TABLE `bond_receiver`
  ADD PRIMARY KEY (`bond_receiver_id`),
  ADD UNIQUE KEY `receiver_name` (`receiver_name`),
  ADD KEY `Bond_Receiver_FK1` (`Country_destination_id`),
  ADD KEY `Bond_Receiver_FK2` (`bond_issuer_id`);

--
-- Indexes for table `bond_revenue_expense`
--
ALTER TABLE `bond_revenue_expense`
  ADD PRIMARY KEY (`Country_destination_id`),
  ADD KEY `Bond_Revenue_Expense_FK1` (`bond_receiver_id`),
  ADD KEY `Bond_Revenue_Expense_FK2` (`Project_id`),
  ADD KEY `Bond_Revenue_Expense_FK3` (`National_manager_id`);

--
-- Indexes for table `country_destination`
--
ALTER TABLE `country_destination`
  ADD PRIMARY KEY (`Country_destination_id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`Customer_account_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `Customer_Account_FK` (`customer_id`);

--
-- Indexes for table `escrow_account`
--
ALTER TABLE `escrow_account`
  ADD PRIMARY KEY (`Escrow_Account_id`),
  ADD KEY `Escrow_Account_FK1` (`Receipt_info_id`),
  ADD KEY `Escrow_Account_FK2` (`Country_destination_id`);

--
-- Indexes for table `esg_standard`
--
ALTER TABLE `esg_standard`
  ADD PRIMARY KEY (`ESG_id`),
  ADD UNIQUE KEY `ESG_name` (`ESG_name`);

--
-- Indexes for table `ggv_fee_country`
--
ALTER TABLE `ggv_fee_country`
  ADD PRIMARY KEY (`GGV_fee_id`),
  ADD KEY `GGV_Fee_G20_Country_FK` (`Country_destination_id`);

--
-- Indexes for table `ggv_number_of_purchase`
--
ALTER TABLE `ggv_number_of_purchase`
  ADD PRIMARY KEY (`GGV_number_of_purchase_id`),
  ADD KEY `GGV_number_of_purchase_FK1` (`National_manager_id`),
  ADD KEY `GGV_number_of_purchase_FK2` (`Country_destination_id`);

--
-- Indexes for table `ggv_number_of_visitor`
--
ALTER TABLE `ggv_number_of_visitor`
  ADD PRIMARY KEY (`GGV_number_of_visitor_id`),
  ADD KEY `GGV_number_of_visitor_FK1` (`National_manager_id`),
  ADD KEY `GGV_number_of_visitor_FK2` (`Country_destination_id`);

--
-- Indexes for table `ggv_revenue`
--
ALTER TABLE `ggv_revenue`
  ADD PRIMARY KEY (`Revenue_id`),
  ADD KEY `GGV_Revenue_FK1` (`Country_destination_id`),
  ADD KEY `GGV_Revenue_FK2` (`National_manager_id`);

--
-- Indexes for table `ggv_visa`
--
ALTER TABLE `ggv_visa`
  ADD PRIMARY KEY (`GGV_visa_id`),
  ADD KEY `GGV_visa_FK1` (`Country_destination_id`),
  ADD KEY `GGV_visa_FK2` (`customer_id`),
  ADD KEY `GGV_visa_FK3` (`Receipt_info_id`);

--
-- Indexes for table `ggv_visits_per_visa`
--
ALTER TABLE `ggv_visits_per_visa`
  ADD PRIMARY KEY (`GGV_Visits_per_visa_id`),
  ADD KEY `GGV_Visits_Per_Visa_FK1` (`Country_destination_id`),
  ADD KEY `GGV_Visits_Per_Visa_FK2` (`National_manager_id`),
  ADD KEY `GGV_Visits_Per_Visa_FK3` (`Preference_id`),
  ADD KEY `GGV_Visits_Per_Visa_FK4` (`customer_id`);

--
-- Indexes for table `independent_panel_of_expert`
--
ALTER TABLE `independent_panel_of_expert`
  ADD PRIMARY KEY (`Expert_id`);

--
-- Indexes for table `institution_strengthened`
--
ALTER TABLE `institution_strengthened`
  ADD PRIMARY KEY (`Institution_id`),
  ADD UNIQUE KEY `Institution_name` (`Institution_name`),
  ADD KEY `Institution_Strengthened_FK` (`Project_id`);

--
-- Indexes for table `investor`
--
ALTER TABLE `investor`
  ADD PRIMARY KEY (`investor_id`),
  ADD UNIQUE KEY `Country` (`Country`),
  ADD UNIQUE KEY `Investor_name` (`Investor_name`);

--
-- Indexes for table `multilateral_development_bank`
--
ALTER TABLE `multilateral_development_bank`
  ADD PRIMARY KEY (`Multilateral_bank_id`),
  ADD UNIQUE KEY `Multilateral_Development_bank_name` (`Multilateral_Development_bank_name`),
  ADD KEY `Multilateral_Development_Bank_FK` (`Country_destination_id`);

--
-- Indexes for table `national_manager`
--
ALTER TABLE `national_manager`
  ADD PRIMARY KEY (`National_manager_id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `National_manager_FK` (`Country_destination_id`);

--
-- Indexes for table `national_manager_account`
--
ALTER TABLE `national_manager_account`
  ADD PRIMARY KEY (`National_manager_account_id`),
  ADD KEY `National_manager_account_FK` (`National_manager_id`);

--
-- Indexes for table `passport_detail`
--
ALTER TABLE `passport_detail`
  ADD PRIMARY KEY (`Passport_id`),
  ADD KEY `Passport_Detail_FK` (`customer_id`);

--
-- Indexes for table `potential_bond_partner`
--
ALTER TABLE `potential_bond_partner`
  ADD PRIMARY KEY (`bond_Partners_id`),
  ADD UNIQUE KEY `Bond_name` (`Bond_name`),
  ADD KEY `Potential_bond_partner_FK` (`ESG_id`);

--
-- Indexes for table `preference_location`
--
ALTER TABLE `preference_location`
  ADD PRIMARY KEY (`Preference_id`),
  ADD UNIQUE KEY `County` (`County`),
  ADD KEY `Preference_Location_FK` (`Country_destination_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_id`),
  ADD UNIQUE KEY `Project_name` (`Project_name`),
  ADD KEY `Project_FK1` (`Country_destination_id`),
  ADD KEY `Project_FK2` (`investor_id`);

--
-- Indexes for table `project_contribution_to_ndc`
--
ALTER TABLE `project_contribution_to_ndc`
  ADD PRIMARY KEY (`Contribution_id`),
  ADD KEY `Project_Contribution_To_NDC_FK1` (`National_manager_id`),
  ADD KEY `Project_Contribution_To_NDC_FK2` (`Project_id`);

--
-- Indexes for table `project_result`
--
ALTER TABLE `project_result`
  ADD PRIMARY KEY (`Result_id`),
  ADD KEY `Project_Result_FK1` (`National_manager_id`),
  ADD KEY `Project_Result_FK2` (`Project_id`),
  ADD KEY `Project_Result_FK3` (`Country_destination_id`),
  ADD KEY `Project_Result_FK4` (`Beneficiary_id`),
  ADD KEY `Project_Result_FK5` (`Institution_id`),
  ADD KEY `Project_Result_FK6` (`Third_party_auditor_id`);

--
-- Indexes for table `receipt_info`
--
ALTER TABLE `receipt_info`
  ADD PRIMARY KEY (`Receipt_info_id`),
  ADD KEY `Receipt_info_FK1` (`Country_destination_id`),
  ADD KEY `Receipt_info_FK2` (`GGV_fee_id`),
  ADD KEY `Receipt_info_FK3` (`Preference_id`),
  ADD KEY `Receipt_info_FK4` (`customer_id`);

--
-- Indexes for table `third_party_auditor`
--
ALTER TABLE `third_party_auditor`
  ADD PRIMARY KEY (`Third_party_auditor_id`),
  ADD KEY `Third_party_Auditor_FK1` (`Country_destination_id`),
  ADD KEY `Third_party_Auditor_FK2` (`Escrow_Account_id`);

--
-- Indexes for table `total_bond_revenue_expenditure`
--
ALTER TABLE `total_bond_revenue_expenditure`
  ADD PRIMARY KEY (`Expenditure_id`),
  ADD KEY `Total_Bond_Revenue_Expenditure_FK` (`National_manager_id`);

--
-- Indexes for table `total_ggv_visa_day`
--
ALTER TABLE `total_ggv_visa_day`
  ADD PRIMARY KEY (`GGV_Visa_days_id`),
  ADD KEY `Total_GGV_Visa_Day_FK1` (`Country_destination_id`),
  ADD KEY `Total_GGV_Visa_Day_FK2` (`customer_id`),
  ADD KEY `Total_GGV_Visa_Day_FK3` (`GGV_visa_id`),
  ADD KEY `Total_GGV_Visa_Day_FK4` (`National_manager_id`);

--
-- Indexes for table `trust_fund`
--
ALTER TABLE `trust_fund`
  ADD PRIMARY KEY (`Trust_Fund_id`),
  ADD KEY `Trust_Fund_FK1` (`Country_destination_id`),
  ADD KEY `Trust_Fund_FK2` (`Preference_id`);

--
-- Indexes for table `visa_payment_history`
--
ALTER TABLE `visa_payment_history`
  ADD PRIMARY KEY (`Customer_payment_history_id`),
  ADD KEY `Visa_payment_history_FK1` (`customer_id`),
  ADD KEY `Visa_payment_history_FK2` (`GGV_visa_id`),
  ADD KEY `Visa_payment_history_FK3` (`Receipt_info_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `average_visit_per_visitor`
--
ALTER TABLE `average_visit_per_visitor`
  ADD CONSTRAINT `Average_Visit_Per_Visitor_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Average_Visit_Per_Visitor_FK2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `Average_Visit_Per_Visitor_FK3` FOREIGN KEY (`GGV_visa_id`) REFERENCES `ggv_visa` (`GGV_visa_id`),
  ADD CONSTRAINT `Average_Visit_Per_Visitor_FK4` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD CONSTRAINT `Beneficiary_FK` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`);

--
-- Constraints for table `board_of_director`
--
ALTER TABLE `board_of_director`
  ADD CONSTRAINT `Board_of_Director_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Board_of_Director_FK2` FOREIGN KEY (`Expert_id`) REFERENCES `independent_panel_of_expert` (`Expert_id`),
  ADD CONSTRAINT `Board_of_Director_FK3` FOREIGN KEY (`Trust_Fund_id`) REFERENCES `trust_fund` (`Trust_Fund_id`);

--
-- Constraints for table `bond_issuer`
--
ALTER TABLE `bond_issuer`
  ADD CONSTRAINT `Bond_Issuer_FK` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `bond_receiver`
--
ALTER TABLE `bond_receiver`
  ADD CONSTRAINT `Bond_Receiver_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Bond_Receiver_FK2` FOREIGN KEY (`bond_issuer_id`) REFERENCES `bond_issuer` (`bond_issuer_id`);

--
-- Constraints for table `bond_revenue_expense`
--
ALTER TABLE `bond_revenue_expense`
  ADD CONSTRAINT `Bond_Revenue_Expense_FK1` FOREIGN KEY (`bond_receiver_id`) REFERENCES `bond_receiver` (`bond_receiver_id`),
  ADD CONSTRAINT `Bond_Revenue_Expense_FK2` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`),
  ADD CONSTRAINT `Bond_Revenue_Expense_FK3` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `Customer_Account_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `escrow_account`
--
ALTER TABLE `escrow_account`
  ADD CONSTRAINT `Escrow_Account_FK1` FOREIGN KEY (`Receipt_info_id`) REFERENCES `receipt_info` (`Receipt_info_id`),
  ADD CONSTRAINT `Escrow_Account_FK2` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `ggv_fee_country`
--
ALTER TABLE `ggv_fee_country`
  ADD CONSTRAINT `GGV_Fee_G20_Country_FK` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `ggv_number_of_purchase`
--
ALTER TABLE `ggv_number_of_purchase`
  ADD CONSTRAINT `GGV_number_of_purchase_FK1` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`),
  ADD CONSTRAINT `GGV_number_of_purchase_FK2` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `ggv_number_of_visitor`
--
ALTER TABLE `ggv_number_of_visitor`
  ADD CONSTRAINT `GGV_number_of_visitor_FK1` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`),
  ADD CONSTRAINT `GGV_number_of_visitor_FK2` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `ggv_revenue`
--
ALTER TABLE `ggv_revenue`
  ADD CONSTRAINT `GGV_Revenue_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `GGV_Revenue_FK2` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `ggv_visa`
--
ALTER TABLE `ggv_visa`
  ADD CONSTRAINT `GGV_visa_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `GGV_visa_FK2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `GGV_visa_FK3` FOREIGN KEY (`Receipt_info_id`) REFERENCES `receipt_info` (`Receipt_info_id`);

--
-- Constraints for table `ggv_visits_per_visa`
--
ALTER TABLE `ggv_visits_per_visa`
  ADD CONSTRAINT `GGV_Visits_Per_Visa_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `GGV_Visits_Per_Visa_FK2` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`),
  ADD CONSTRAINT `GGV_Visits_Per_Visa_FK3` FOREIGN KEY (`Preference_id`) REFERENCES `preference_location` (`Preference_id`),
  ADD CONSTRAINT `GGV_Visits_Per_Visa_FK4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `institution_strengthened`
--
ALTER TABLE `institution_strengthened`
  ADD CONSTRAINT `Institution_Strengthened_FK` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`);

--
-- Constraints for table `multilateral_development_bank`
--
ALTER TABLE `multilateral_development_bank`
  ADD CONSTRAINT `Multilateral_Development_Bank_FK` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `national_manager`
--
ALTER TABLE `national_manager`
  ADD CONSTRAINT `National_manager_FK` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `national_manager_account`
--
ALTER TABLE `national_manager_account`
  ADD CONSTRAINT `National_manager_account_FK` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `passport_detail`
--
ALTER TABLE `passport_detail`
  ADD CONSTRAINT `Passport_Detail_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `potential_bond_partner`
--
ALTER TABLE `potential_bond_partner`
  ADD CONSTRAINT `Potential_bond_partner_FK` FOREIGN KEY (`ESG_id`) REFERENCES `esg_standard` (`ESG_id`);

--
-- Constraints for table `preference_location`
--
ALTER TABLE `preference_location`
  ADD CONSTRAINT `Preference_Location_FK` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `Project_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Project_FK2` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`investor_id`);

--
-- Constraints for table `project_contribution_to_ndc`
--
ALTER TABLE `project_contribution_to_ndc`
  ADD CONSTRAINT `Project_Contribution_To_NDC_FK1` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`),
  ADD CONSTRAINT `Project_Contribution_To_NDC_FK2` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`);

--
-- Constraints for table `project_result`
--
ALTER TABLE `project_result`
  ADD CONSTRAINT `Project_Result_FK1` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`),
  ADD CONSTRAINT `Project_Result_FK2` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`),
  ADD CONSTRAINT `Project_Result_FK3` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Project_Result_FK4` FOREIGN KEY (`Beneficiary_id`) REFERENCES `beneficiary` (`Beneficiary_id`),
  ADD CONSTRAINT `Project_Result_FK5` FOREIGN KEY (`Institution_id`) REFERENCES `institution_strengthened` (`Institution_id`),
  ADD CONSTRAINT `Project_Result_FK6` FOREIGN KEY (`Third_party_auditor_id`) REFERENCES `third_party_auditor` (`Third_party_auditor_id`);

--
-- Constraints for table `receipt_info`
--
ALTER TABLE `receipt_info`
  ADD CONSTRAINT `Receipt_info_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Receipt_info_FK2` FOREIGN KEY (`GGV_fee_id`) REFERENCES `ggv_fee_country` (`GGV_fee_id`),
  ADD CONSTRAINT `Receipt_info_FK3` FOREIGN KEY (`Preference_id`) REFERENCES `preference_location` (`Preference_id`),
  ADD CONSTRAINT `Receipt_info_FK4` FOREIGN KEY (`customer_id`) REFERENCES `customer_account` (`customer_id`);

--
-- Constraints for table `third_party_auditor`
--
ALTER TABLE `third_party_auditor`
  ADD CONSTRAINT `Third_party_Auditor_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Third_party_Auditor_FK2` FOREIGN KEY (`Escrow_Account_id`) REFERENCES `escrow_account` (`Escrow_Account_id`);

--
-- Constraints for table `total_bond_revenue_expenditure`
--
ALTER TABLE `total_bond_revenue_expenditure`
  ADD CONSTRAINT `Total_Bond_Revenue_Expenditure_FK` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `total_ggv_visa_day`
--
ALTER TABLE `total_ggv_visa_day`
  ADD CONSTRAINT `Total_GGV_Visa_Day_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Total_GGV_Visa_Day_FK2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `Total_GGV_Visa_Day_FK3` FOREIGN KEY (`GGV_visa_id`) REFERENCES `ggv_visa` (`GGV_visa_id`),
  ADD CONSTRAINT `Total_GGV_Visa_Day_FK4` FOREIGN KEY (`National_manager_id`) REFERENCES `national_manager` (`National_manager_id`);

--
-- Constraints for table `trust_fund`
--
ALTER TABLE `trust_fund`
  ADD CONSTRAINT `Trust_Fund_FK1` FOREIGN KEY (`Country_destination_id`) REFERENCES `country_destination` (`Country_destination_id`),
  ADD CONSTRAINT `Trust_Fund_FK2` FOREIGN KEY (`Preference_id`) REFERENCES `preference_location` (`Preference_id`);

--
-- Constraints for table `visa_payment_history`
--
ALTER TABLE `visa_payment_history`
  ADD CONSTRAINT `Visa_payment_history_FK1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `Visa_payment_history_FK2` FOREIGN KEY (`GGV_visa_id`) REFERENCES `ggv_visa` (`GGV_visa_id`),
  ADD CONSTRAINT `Visa_payment_history_FK3` FOREIGN KEY (`Receipt_info_id`) REFERENCES `receipt_info` (`Receipt_info_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
