/*
 Navicat Premium Data Transfer

 Source Server         : k8s9.com
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : k8s9.com:30336
 Source Schema         : skyer_goods

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 01/11/2022 10:21:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sgoo_brand
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_brand`;
CREATE TABLE `sgoo_brand`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成商',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态1,启用；0禁用',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_category
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_category`;
CREATE TABLE `sgoo_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类编码',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '父id 默认0,代表一级',
  `path_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'id路径',
  `path_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '名称路径',
  `status_flag` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1启用 0禁用 默认1',
  `level` smallint(7) NOT NULL DEFAULT 1 COMMENT '类目等级 一级开始 默认1',
  `sub_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否叶子类目 0否 1是，默认0',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 372048689446260737 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_category_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_category_attribute`;
CREATE TABLE `sgoo_category_attribute`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_id` bigint(20) UNSIGNED NOT NULL COMMENT '分类id sgoo_category.id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名称',
  `code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性编码',
  `sort` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '排序',
  `form_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '表单方式 1单选2复选3文本4下拉 默认3',
  `sku_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否用于生成sku 1是 0 否 默认0',
  `status_flag` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1启用 0禁用 默认1',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `source_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '来源类型 0新增 1系统 2父级分类 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 370527154524917761 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_category_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_category_attribute_value`;
CREATE TABLE `sgoo_category_attribute_value`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `attribute_id` bigint(20) UNSIGNED NOT NULL COMMENT '属性id sgoo_category_attribute.id',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 370527154575249409 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类属性值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_goods_shop
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_goods_shop`;
CREATE TABLE `sgoo_goods_shop`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `spu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品spuid',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态1,启用；0禁用',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`spu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_install_service
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_install_service`;
CREATE TABLE `sgoo_install_service`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `service_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '安装服务编码',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '服务名称',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '安装类别',
  `people_amount` int(11) NOT NULL DEFAULT 0 COMMENT '配备安装人数',
  `money` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '费用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '备注',
  `service_zone` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '服务地区，json数据',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `service_code`(`service_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '安装服务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_material
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_material`;
CREATE TABLE `sgoo_material`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `detail_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品详情',
  `detail_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详情图',
  `main_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图',
  `material_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '素材名称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品素材表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku`;
CREATE TABLE `sgoo_sku`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `sku_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku',
  `creation_date` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `show_flag` tinyint(1) NOT NULL DEFAULT 1 COMMENT '显示标志，1显示，0不显示',
  `md5_check_value` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '唯一性校验',
  `sku_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku名称',
  `cost_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '成本价',
  `sales_price` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '销售价',
  `activity_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '活动价',
  `market_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `distribution_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '分销价',
  `wholesale_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '批发价',
  `clearing_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '结算价',
  `weight` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品重量',
  `length` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品长度',
  `width` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品宽度',
  `height` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品高度',
  `status` tinyint(1) NOT NULL COMMENT '状态 0草稿 1被驳回 2审核中 3已生效 4已生效(修改中)5已生效(被驳回)',
  `audit_idea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `audit_commit_date` datetime(0) NULL DEFAULT NULL COMMENT '审核提交日期',
  `audit_commit_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '最后提交人id',
  `set_flag` tinyint(4) NULL DEFAULT 0 COMMENT '套餐标识：0-单品，1-套餐',
  `gift_flag` tinyint(4) NULL DEFAULT 0 COMMENT '赠品标识：0-卖品，1-赠品',
  `multi_flag` tinyint(4) NULL DEFAULT 0 COMMENT '子母件标识：0-普通单品，1-子母件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sgoo_sku_u1`(`spu_id`, `sku_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_attribute_value`;
CREATE TABLE `sgoo_sku_attribute_value`  (
  `id` bigint(20) NOT NULL COMMENT '属性值',
  `sku_id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NULL DEFAULT NULL COMMENT '属性ID',
  `attribute_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `attribute_type` tinyint(1) NULL DEFAULT NULL COMMENT '类型： 商品属性0  系统默认  1  分类属性2  附加属性3',
  `is_sku` tinyint(1) NOT NULL COMMENT '是否用于生成sku',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'sku属性关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_attribute_value_draft
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_attribute_value_draft`;
CREATE TABLE `sgoo_sku_attribute_value_draft`  (
  `id` bigint(20) NOT NULL COMMENT '属性值',
  `sku_id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NULL DEFAULT NULL COMMENT '属性ID',
  `attribute_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `attribute_type` tinyint(1) NULL DEFAULT NULL COMMENT '类型： 商品属性0  系统默认  1  分类属性2  附加属性3',
  `is_sku` tinyint(1) NOT NULL COMMENT '是否用于生成sku',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'sku属性关联草稿表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_audit_setting
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_audit_setting`;
CREATE TABLE `sgoo_sku_audit_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `created_audit_status` tinyint(1) NOT NULL COMMENT '创建审核状态 1开启 0关闭',
  `update_audit_status` tinyint(1) NOT NULL COMMENT '更改审核状态 1开启 0关闭',
  `update_price_status` tinyint(1) NULL DEFAULT NULL COMMENT '更改价格状态 1开启 0关闭',
  `update_property_status` tinyint(1) NULL DEFAULT NULL COMMENT '更改属性状态 1开启 0关闭',
  `upload_sku_third_status` tinyint(1) NULL DEFAULT NULL COMMENT '上传商品到三方  1开启 0关闭',
  `upload_category_third_status` tinyint(1) NULL DEFAULT NULL COMMENT '上传分类到三方  1开启 0关闭',
  `category_upload_flag` tinyint(1) NULL DEFAULT NULL COMMENT '是否已上传分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298092884580900865 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品SKU审核设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_draft
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_draft`;
CREATE TABLE `sgoo_sku_draft`  (
  `sku_id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `sku_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku',
  `show_flag` tinyint(4) NOT NULL DEFAULT 1 COMMENT '显示标志，1显示，0不显示',
  `cost_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '成本价',
  `sales_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '销售价',
  `activity_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '活动价',
  `market_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `distribution_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '分销价',
  `wholesale_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '批发价',
  `clearing_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '结算价',
  `weight` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品重量',
  `length` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品长度',
  `width` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品宽度',
  `height` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品高度',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格草稿表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_group
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_group`;
CREATE TABLE `sgoo_sku_group`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `sku_group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '价格 多个价格使用json串保存',
  `md5_check_value` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '唯一性校验',
  `group_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '套餐名称',
  `is_all_store` tinyint(4) NULL DEFAULT NULL COMMENT '是否适用于全部店铺',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Sku组合表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_group_sku
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_group_sku`;
CREATE TABLE `sgoo_sku_group_sku`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuid',
  `sku_group_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku组合商品',
  `num` decimal(10, 0) NULL DEFAULT NULL COMMENT '数量',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT 'spuId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Sku组合和sku关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_group_store
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_group_store`;
CREATE TABLE `sgoo_sku_group_store`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户Id',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `sku_group_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku组合商品',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sku_code`(`sku_group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Sku组合和店铺表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_sku_package
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_sku_package`;
CREATE TABLE `sgoo_sku_package`  (
  `id` bigint(20) NOT NULL,
  `sku_id` bigint(20) NOT NULL COMMENT '主表id',
  `package_sku_id` bigint(20) NOT NULL COMMENT '套餐内skuId',
  `num` int(11) NOT NULL COMMENT '套餐内sku数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu`;
CREATE TABLE `sgoo_spu`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `brand_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `brand_id` bigint(20) NULL DEFAULT NULL COMMENT '品牌id',
  `category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类编码',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '分类id',
  `material_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '素材编码',
  `material_id` bigint(20) NULL DEFAULT NULL COMMENT '素材id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `spu_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型1.实物2虚拟',
  `set_flag` tinyint(4) NULL DEFAULT 0 COMMENT '套餐标识：0-单品，1-套餐',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态  0-未删除 1-删除',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `status` tinyint(10) NULL DEFAULT NULL COMMENT '状态',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spu_code`(`spu_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_attr_value_relation
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_attr_value_relation`;
CREATE TABLE `sgoo_spu_attr_value_relation`  (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'id主键',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `attribute_value_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '属性值表id',
  `attribute_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '属性id',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `attribute_input_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户填写的属性值',
  `type` smallint(10) NULL DEFAULT NULL COMMENT '属性类别类别 1单选2复选3文本4下拉',
  `attribute_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性code',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品和属性值关联关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_attribute`;
CREATE TABLE `sgoo_spu_attribute`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'id',
  `spu_id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名称',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `type` smallint(10) NULL DEFAULT NULL COMMENT '  0商品属性\r\n  1系统默认\r\n  2分类属性\r\n  3附加属性',
  `is_sku` tinyint(4) NULL DEFAULT NULL COMMENT '是否用于生成sku',
  `status` smallint(10) NULL DEFAULT NULL COMMENT '状态',
  `submissions_type` smallint(10) NULL DEFAULT NULL COMMENT '属性类别 1单选2复选3文本4下拉',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_attribute_value`;
CREATE TABLE `sgoo_spu_attribute_value`  (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'id主键',
  `attribute_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '属性id',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `sort` int(20) NULL DEFAULT NULL COMMENT '排序',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT 'spuId',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_install_service
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_install_service`;
CREATE TABLE `sgoo_spu_install_service`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_id` bigint(20) UNSIGNED NOT NULL COMMENT 'spu_id(主)',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spu编码(主)',
  `spu_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `is_all_store` tinyint(4) NULL DEFAULT NULL COMMENT '是否适用于全部店铺',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '目录id',
  `install_service_id` bigint(20) NULL DEFAULT NULL COMMENT '安装服务id',
  `install_service_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '安装服务code',
  `install_service_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '安装服务名称',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `remark` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品安装服务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_install_service_sku
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_install_service_sku`;
CREATE TABLE `sgoo_spu_install_service_sku`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_id` bigint(20) UNSIGNED NOT NULL COMMENT 'spu_id(主)',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spu编码(主)',
  `son_sku_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '子商品sku_id',
  `son_sku_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '子商品sku_code',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品安装服务sku表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_install_service_store
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_install_service_store`;
CREATE TABLE `sgoo_spu_install_service_store`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spuCode',
  `store_id` bigint(20) UNSIGNED NOT NULL COMMENT '店铺id',
  `store_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '店铺代码',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品安装服务售卖门店' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_son_mum
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_son_mum`;
CREATE TABLE `sgoo_spu_son_mum`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_id` bigint(20) UNSIGNED NOT NULL COMMENT 'spu_id(主)',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spu编码(主)',
  `spu_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `is_all_store` tinyint(4) NULL DEFAULT NULL COMMENT '是否适用于全部店铺',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '目录id',
  `remark` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '子母商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_son_mum_sku
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_son_mum_sku`;
CREATE TABLE `sgoo_spu_son_mum_sku`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_id` bigint(20) UNSIGNED NOT NULL COMMENT 'spu_id(主)',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spu编码(主)',
  `son_sku_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '子商品sku_id',
  `son_sku_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '子商品sku_code',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '子母商品sku表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sgoo_spu_son_mum_store
-- ----------------------------
DROP TABLE IF EXISTS `sgoo_spu_son_mum_store`;
CREATE TABLE `sgoo_spu_son_mum_store`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键id',
  `spu_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'spuCode',
  `store_id` bigint(20) UNSIGNED NOT NULL COMMENT '店铺id',
  `store_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '店铺代码',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `tenant_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '租户Id',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '子母商品售卖门店' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
