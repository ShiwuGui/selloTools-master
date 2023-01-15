/*
 Navicat Premium Data Transfer

 Source Server         : k8s9.com
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : k8s9.com:30336
 Source Schema         : skyer_channel

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 01/11/2022 10:20:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for channel_dealer
-- ----------------------------
DROP TABLE IF EXISTS `channel_dealer`;
CREATE TABLE `channel_dealer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dealer_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '经销商编码',
  `dealer_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '经销商名称',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户Id',
  `contact_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人姓名',
  `contact_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人电话',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态 0启用 1禁用',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '1删除',
  `description` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '经销商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_group
-- ----------------------------
DROP TABLE IF EXISTS `channel_group`;
CREATE TABLE `channel_group`  (
  `id` bigint(20) NOT NULL,
  `group_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '集团名称',
  `group_short_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '集团简称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '集团logo',
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '集团图标',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel_group
-- ----------------------------
INSERT INTO `channel_group` VALUES (298091878464491520, '凑合凑合吧网络科技有限公司', '凑合凑合吧', 'minio.k8s9.com/test/0/1664203940202_180IPTK6_logo_white.png', 'minio.k8s9.com/test/0/1663835953224_YUYPMF99_bitbug_favicon.ico', '2022-04-02 13:50:42', '2022-10-10 15:41:50', 1, 298157027917828096, 13);

-- ----------------------------
-- Table structure for channel_sales_organization
-- ----------------------------
DROP TABLE IF EXISTS `channel_sales_organization`;
CREATE TABLE `channel_sales_organization`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公司编码',
  `org_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公司名称',
  `shop_permit_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业执照名称',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户Id',
  `legal_person` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人姓名',
  `uniform_social_credit_code` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `business_license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业执照',
  `pid` bigint(30) NULL DEFAULT NULL COMMENT '所属上级公司',
  `group_id` bigint(30) NULL DEFAULT NULL COMMENT '所属集团',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态 0启用 1禁用',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '1删除',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 373124533056442369 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售组织表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_shop
-- ----------------------------
DROP TABLE IF EXISTS `channel_shop`;
CREATE TABLE `channel_shop`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  `type_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺类型',
  `category_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺类别：区分网店还是实体店',
  `channel_warehouse_status` tinyint(1) NULL DEFAULT 0 COMMENT '0否 1是',
  `channel_warehouse_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道仓名称',
  `manager` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态 1启用 0禁用',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '1删除',
  `sales_organizing_id` bigint(20) NULL DEFAULT NULL COMMENT '销售组织',
  `invoice_type_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票种类',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `country_id` bigint(20) NULL DEFAULT NULL COMMENT '国家ID',
  `province_id` bigint(20) NULL DEFAULT NULL COMMENT '省ID',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '市ID',
  `county_id` bigint(20) NULL DEFAULT NULL COMMENT '县ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网店地址(url)',
  `channel_type_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道类型',
  `auto_confirm_day` tinyint(4) NULL DEFAULT 0 COMMENT '自动确认发货（天）',
  `auto_download_goods` tinyint(1) NULL DEFAULT 0 COMMENT '自动下载商品',
  `auto_sync_inventory` tinyint(1) NULL DEFAULT 0 COMMENT '自动同步库存',
  `relation_physical_shop_id` bigint(20) NULL DEFAULT NULL COMMENT '网店关联的门店',
  `self_pickup_flag` tinyint(1) NULL DEFAULT 1 COMMENT 'o2o自提门店',
  `mall_id` bigint(50) NULL DEFAULT NULL COMMENT '店铺ID',
  `auth_status` tinyint(10) NULL DEFAULT 1 COMMENT '授权状态    1-未授权 2-已授权  3- 授权失败 4-授权停用',
  `auth_time` datetime(0) NULL DEFAULT NULL COMMENT '授权时间',
  `auth_end_time` datetime(0) NULL DEFAULT NULL COMMENT '授权结束时间',
  `sync_safe_value` int(255) NULL DEFAULT NULL COMMENT '同步安全值',
  `auto_pull_order` tinyint(10) NULL DEFAULT NULL COMMENT '自动下载订单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 370523533036490753 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺表' ROW_FORMAT = Dynamic;
SET FOREIGN_KEY_CHECKS = 1;
