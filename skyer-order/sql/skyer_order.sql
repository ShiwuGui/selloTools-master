/*
 Navicat Premium Data Transfer

 Source Server         : env
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.124.200:3306
 Source Schema         : skyer_order

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 01/11/2022 10:27:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sord_after_sale_header
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sale_header`;
CREATE TABLE `sord_after_sale_header`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退款/退货单号',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `out_return_time` datetime(0) NULL DEFAULT NULL COMMENT '三方退款/退回退款时间',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型 1-退款单  2- 退货退款',
  `endorse_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态 0-待审核   1-一审  ',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `store_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺编码',
  `buyer_nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家昵称',
  `action_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '普通转单、手工单、复制单、导入单',
  `refund_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款类型/退货退款类型：1-未发货仅退款  1-退货退款',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款/退货原因',
  `service_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款/退货客服备注',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `pay_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结算方式',
  `goods_quantity` int(11) NULL DEFAULT NULL COMMENT '商品行总数',
  `refund_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '退款总金额',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签code 多个,分割',
  `accessory` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '附件(可多个逗号隔开）',
  `complete_date` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `endorse_refuse_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核拒绝原因',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `receiving_warehouse_id` bigint(20) NULL DEFAULT NULL COMMENT '收货仓库',
  `receiving_warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货仓库名称',
  `receiving_warehouse_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库收货状态    0-待收货   1- 已收货',
  `receiving_warehouse_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '逻辑仓编码',
  `receiver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人',
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款/退货阶段   0-售中  1-售后',
  `order_refund_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款单类型',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人手机',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人地址',
  `audit_complete_time` datetime(0) NULL DEFAULT NULL COMMENT '审核完成时间',
  `buyer_return_time` datetime(0) NULL DEFAULT NULL COMMENT '用户退货完成时间',
  `warehouse_receiving_time` datetime(0) NULL DEFAULT NULL COMMENT '仓库验收时间',
  `refund_complete_time` datetime(0) NULL DEFAULT NULL COMMENT '退款完成时间',
  `origin_order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `buyer_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家备注/留言',
  `bpmn_instance_id` bigint(30) NULL DEFAULT NULL COMMENT '工作流实例 ID',
  `bpmn_process_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作流部署ID（工作流每次部署ID都会变化）',
  `bpmn_job_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作流jobkey',
  `exception_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '转单状态  0-  正常  1- 异常',
  `exception_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常原因',
  `order_warehousing_notice_id` bigint(20) NULL DEFAULT NULL COMMENT '入库通知单id(订单中心)',
  `warehouse_warrant_id` bigint(20) NULL DEFAULT NULL COMMENT '入库通知单id(库存中心)',
  `warehouse_result_id` bigint(20) NULL DEFAULT NULL COMMENT '入库结果单id',
  `warehouse_warrant_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库通知单号',
  `warehouse_result_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库结果单号',
  `warehouse_job_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库节点jobkey',
  `audit_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '审核人ID',
  `third_store_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方店铺id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_outer_refund_no`(`outer_refund_no`) USING BTREE COMMENT '第三方单号索引',
  INDEX `index_outer_order_no`(`outer_order_no`) USING BTREE COMMENT '外部订单索引',
  INDEX `index_inner_order_no`(`inner_order_no`) USING BTREE COMMENT '内部订单号',
  INDEX `index_store_id_channel`(`store_id`, `channel`, `store_code`, `store_name`) USING BTREE COMMENT '渠道和店铺id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_after_sale_item
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sale_item`;
CREATE TABLE `sord_after_sale_item`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型 1-退款单  2- 退货退款',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `origin_item_id` bigint(20) NULL DEFAULT NULL COMMENT '原itemid',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退款/退货单号',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '已退款数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款单价(均摊商品行单价)',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT 0 COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后单商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_after_sale_item_line
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sale_item_line`;
CREATE TABLE `sord_after_sale_item_line`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退款/退货单号',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `origin_item_id` bigint(20) NOT NULL COMMENT '原itemId',
  `origin_item_line_id` bigint(20) NOT NULL COMMENT '原ItemLineId',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型 1-退款单  2- 退货退款',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款单价(均摊商品行单价)',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后单商品行' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_after_sale_logistics
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sale_logistics`;
CREATE TABLE `sord_after_sale_logistics`  (
  `id` bigint(20) NOT NULL,
  `logistics_company_id` bigint(60) NULL DEFAULT NULL COMMENT '退货物流公司id',
  `logistics_company_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流公司名称',
  `logistics_no` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退货单号',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_after_sale_receiver_info
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sale_receiver_info`;
CREATE TABLE `sord_after_sale_receiver_info`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方退货单号',
  `return_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人姓名',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人手机号码',
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人省编码',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在省份',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人市编码',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在市',
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人区编码',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在区',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人街道地址',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人详细地址',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `receive_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人姓名',
  `receive_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人手机号码',
  `receive_province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人省编码',
  `receive_province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在省份',
  `receive_city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人市编码',
  `receive_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在市',
  `receive_district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人区编码',
  `receive_district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在区',
  `receive_town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人街道地址',
  `receive_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部售后收货' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_after_sales_reason
-- ----------------------------
DROP TABLE IF EXISTS `sord_after_sales_reason`;
CREATE TABLE `sord_after_sales_reason`  (
  `id` bigint(20) NOT NULL,
  `reason_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原因code',
  `reason_describe` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原因描述',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态 0禁用1启用',
  `use_num` bigint(20) NULL DEFAULT 0 COMMENT '被使用次数',
  `use_flag` tinyint(4) NULL DEFAULT 0 COMMENT '使用状态 0未使用 1已使用',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '原因类型 0仅退款 1退货退款',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1被删除',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后原因' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_aggr_price
-- ----------------------------
DROP TABLE IF EXISTS `sord_aggr_price`;
CREATE TABLE `sord_aggr_price`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `platform_sale_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '三方平台售价',
  `inner_sale_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '内部售价',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单聚合价格项（横向拓展）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_audit
-- ----------------------------
DROP TABLE IF EXISTS `sord_audit`;
CREATE TABLE `sord_audit`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `audit_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `source_id` bigint(20) NULL DEFAULT NULL COMMENT '寻源单id',
  `goods_quatity` int(11) NULL DEFAULT NULL COMMENT '商品（行）总数量',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `bpmn_instance_id` bigint(30) NULL DEFAULT NULL COMMENT '工作流实例 ID',
  `bpmn_process_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作流部署ID（工作流每次部署ID都会变化）',
  `bpmn_version_num` bigint(20) NULL DEFAULT NULL COMMENT '工作流版本号',
  `bpmn_job_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作流jobkey',
  `fail_reason` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `endorse_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核是否完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '审核流程\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sord_coupon`;
CREATE TABLE `sord_coupon`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内部订单号',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单来源渠道平台，如：淘宝、1688、京东、拼多多、抖音、苏宁、小米有品等',
  `outer_coupon_id` bigint(20) NOT NULL COMMENT '平台优惠券id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券类型，如京东有：京券，平台京券，限品类京券，东券，平台东券，限品类东券，店铺京券，店铺限商品京券，店铺东券，店铺限商品东券，按比例分摊平台券，自营承担平台券，商家承担平台券',
  `num` int(11) NOT NULL COMMENT '优惠券数量',
  `amount` decimal(12, 2) NOT NULL COMMENT '优惠券面额，计价单位：元，保留小数点后2位',
  `divide_flag` tinyint(4) NOT NULL COMMENT '价格分摊标识：1-有分摊金额数据，0-无分摊金额数据]',
  `platform_divide_amt` decimal(12, 2) NOT NULL COMMENT '商家分摊金额，计价单位：元，保留小数点后2位',
  `vender_divide_amt` decimal(12, 2) NOT NULL COMMENT '平台分摊金额，计价单位：元，保留小数点后2位',
  `delete_flag` tinyint(4) NOT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NOT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NOT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NOT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NOT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NOT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_header
-- ----------------------------
DROP TABLE IF EXISTS `sord_header`;
CREATE TABLE `sord_header`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `trade_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单交易类型：销售单、仅退款单、退货退款单、换货单',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `action_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单创建类型：普通转单、手工单、复制单、导入单',
  `business_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务类型，如：手工销售订单、直营销售订单、菜鸟外仓销售订单、京东外仓销售订单、直营退货退款订单、平台O2O销售订单、平台预售定金单等',
  `pay_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `store_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺编码',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `pay_status` tinyint(4) NULL DEFAULT NULL COMMENT '支付状态',
  `cancel_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '取消状态',
  `order_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `refund_status` tinyint(4) NULL DEFAULT NULL COMMENT '退款状态',
  `return_status` tinyint(4) NULL DEFAULT NULL COMMENT '退货状态',
  `order_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `buyer_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家备注/留言',
  `service_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客服备注',
  `endorse_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核意见-订单级（待定）',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '取消原因（详情页，手动点击取消）',
  `exception_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常单原因',
  `suspend_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单级-挂起状态：0-正常，1-挂起成功，2-挂起失败，3-解挂成功，4-解挂失败',
  `endorse_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的审核状态',
  `preemption_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的预占状态',
  `source_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的寻源状态',
  `delivery_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的发（收）货状态',
  `sync_preemp_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行，预占后渠道仓数量同步平台状态',
  `sync_delivery_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行，发（收）货同步平台状态',
  `buyer_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家旗帜',
  `buyer_nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家昵称',
  `suspend_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单级-挂起（解挂）原因（商品行级原因则不存）',
  `suspend_type` tinyint(4) NULL DEFAULT NULL COMMENT '挂起类型：1-人工，2-系统',
  `sku_quatity` int(11) NULL DEFAULT NULL COMMENT '商品SKU种类数量',
  `goods_quatity` int(11) NULL DEFAULT NULL COMMENT '商品（行）总数量',
  `order_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '交易修改时间(用户对订单的任何修改都会更新此字段)。格式:yyyy-MM-dd HH:mm:ss',
  `received_time` datetime(0) NULL DEFAULT NULL COMMENT '确认收货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易结束时间（正常完成或者关闭订单时间）',
  `pull_time` datetime(0) NULL DEFAULT NULL COMMENT '拉单时间',
  `transfer_time` datetime(0) NULL DEFAULT NULL COMMENT '转单时间',
  `reset_time` datetime(0) NULL DEFAULT NULL COMMENT '订单重置时间',
  `bpmn_instance_id` bigint(30) NULL DEFAULT NULL COMMENT '工作流实例 ID',
  `bpmn_process_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作流部署ID（工作流每次部署ID都会变化）',
  `bpmn_version_num` bigint(20) NULL DEFAULT NULL COMMENT '工作流版本号',
  `exception_flag` tinyint(4) NULL DEFAULT NULL COMMENT '异常标识：0-正常，1-异常',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `exception_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常编码',
  `copy_origin` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '复制来源',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签code 多个,分割',
  `predict_delivery_time` datetime(0) NULL DEFAULT NULL COMMENT '预计发货时间',
  `outer_sale_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '外部销售总价',
  `receiving_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品收货状态',
  `bpmn_job_key` bigint(50) NULL DEFAULT NULL COMMENT 'bpmn的jobkey 用于结束预占流程',
  `bpmn_job_complete` tinyint(4) NULL DEFAULT NULL COMMENT 'bpmn创单流程是否结束',
  `taking_delivery_way` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提货方式 1- 门店自提    2- 物流配送',
  `sales_employee_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '销售员工',
  `taking_delivery_store_id` bigint(20) NULL DEFAULT NULL COMMENT '提货门店ID',
  `taking_delivery_store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提货门店名称',
  `sales_employee_id` bigint(20) NULL DEFAULT NULL COMMENT '员工ID',
  `voucher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'o2o凭证',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'o2o说明 ',
  `sales_organizing_id` bigint(20) NULL DEFAULT NULL COMMENT '销售组织ID',
  `occupy_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '占用状态',
  `order_source` tinyint(10) NULL DEFAULT NULL COMMENT '订单来源1 接口抓取，2手工建单，3EXCEL导入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单头' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_item
-- ----------------------------
DROP TABLE IF EXISTS `sord_item`;
CREATE TABLE `sord_item`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_item_id` bigint(50) NULL DEFAULT NULL COMMENT '平台商品明细ID',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `refund_qty` int(11) NULL DEFAULT NULL COMMENT '退款数量',
  `return_qty` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `endorse_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的审核状态(0 未完成 1已完成)',
  `preemption_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的预占状态',
  `source_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的寻源状态（0 未完成 1已完成）',
  `delivery_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的发（收）货状态',
  `sync_preemp_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行，预占后渠道仓数量同步平台状态',
  `sync_delivery_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行，发（收）货同步平台状态',
  `set_flag` tinyint(4) NULL DEFAULT NULL COMMENT '套餐标识：0-单品，1-套餐',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `multi_flag` tinyint(4) NULL DEFAULT NULL COMMENT '子母件标识：0-普通单品，1-子母件',
  `exception_flag` tinyint(4) NULL DEFAULT NULL COMMENT '异常标识：0-正常，1-异常',
  `exception_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常单原因（转单因商品的原因异常）',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `refund_flag` tinyint(4) NULL DEFAULT NULL COMMENT '退款标识：0-正常，1-退款',
  `suspend_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '挂起状态：0-正常，1-挂起成功，2-挂起失败，3-解挂成功，4-解挂失败',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺ID',
  `main_item_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '该商品如果是赠品-标明是主商品',
  `order_item_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单商品code',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `system_pick_flag` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '是否系统匹配营销赠品标识',
  `activity_id` bigint(20) NULL DEFAULT NULL COMMENT '指明是哪次活动赠送',
  `receiving_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聚合商品行的收货状态',
  `occupy_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '占用状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_order_item_code`(`order_item_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单商品明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_item_line
-- ----------------------------
DROP TABLE IF EXISTS `sord_item_line`;
CREATE TABLE `sord_item_line`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_item_id` bigint(20) NULL DEFAULT NULL COMMENT '平台商品明细ID',
  `inner_item_id` bigint(20) NULL DEFAULT NULL COMMENT '内部itemid',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku_id',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `suspend_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品行级-挂起状态：0-正常，1-挂起成功，2-挂起失败，3-解挂成功，4-解挂失败',
  `suspend_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品行级-挂起类型：1-人工，2-系统',
  `suspend_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品行级-挂起（解挂）原因（订单级原因则不存）',
  `endorse_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态：1-待审核，2-审核通过，3-审核拒绝',
  `preemption_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预占状态：1-待预占，2-预占成功，3-预占失败',
  `source_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '寻源状态：1-待寻源，2-寻源成功，3-寻源失败',
  `delivery_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发（收）货状态：1-待发（收）货，2-已发（收）货，3-发货失败',
  `current_status` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品行当前状态',
  `sync_preemp_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预占后，渠道仓数量同步平台状态：1-未同步，2-已同步，3-同步失败',
  `sync_delivery_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发（收）货同步平台状态：1-未同步，2-已同步，3-同步失败',
  `preemp_notice_id` bigint(20) NULL DEFAULT NULL COMMENT '预占通知单ID',
  `preemp_result_id` bigint(20) NULL DEFAULT NULL COMMENT '预占结果单ID',
  `source_notice_id` bigint(20) NULL DEFAULT NULL COMMENT '寻源通知单号',
  `source_result_id` bigint(20) NULL DEFAULT NULL COMMENT '寻源结果单号',
  `channel_warehouse_id` bigint(20) NULL DEFAULT NULL COMMENT '预占渠道仓ID',
  `virtual_warehouse_id` bigint(20) NULL DEFAULT NULL COMMENT '预占虚仓ID',
  `virtual_warehouse_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预占虚仓名称',
  `logical_warehouse_id` bigint(20) NULL DEFAULT NULL COMMENT '寻源结果逻辑仓ID',
  `package_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包裹号（哪些商品同一个包裹）',
  `delivery_notice_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发（收）货通知单号',
  `delivery_result_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发（收）货结果单号',
  `express_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `logistics_company_code` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '物流商编码',
  `logistics_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流商名称',
  `logistics_business` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流业务',
  `refund_flag` tinyint(4) NULL DEFAULT NULL COMMENT '退款标识：0-正常，1-退款',
  `return_flag` tinyint(4) NULL DEFAULT NULL COMMENT '退货标识：0-正常，1-退货',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `set_flag` tinyint(4) NULL DEFAULT NULL COMMENT '套餐标识：0-单品，1-套餐',
  `multi_flag` tinyint(4) NULL DEFAULT NULL COMMENT '子母件标识：0-普通单品，1-子母件',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `audit_id` bigint(20) NULL DEFAULT NULL COMMENT '审核单id',
  `logical_warehouse_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '逻辑仓编码',
  `logical_warehouse_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '逻辑仓名称',
  `wms_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'wms单号',
  `cancel_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '取消状态',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `tags` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `out_balance_amount` decimal(2, 0) NULL DEFAULT NULL,
  `inner_balance_amount` decimal(2, 0) NULL DEFAULT NULL,
  `item_line_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'itemLine编码',
  `receiving_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货状态',
  `occupy_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '占用状态',
  `logistics_business_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流业务编码',
  `logistics_business_id` bigint(20) NULL DEFAULT NULL COMMENT '物流业务id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单商品行' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_item_line_price
-- ----------------------------
DROP TABLE IF EXISTS `sord_item_line_price`;
CREATE TABLE `sord_item_line_price`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `order_line_id` bigint(20) NULL DEFAULT NULL COMMENT '内部订单商品行id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格项',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额，计价单位：元，保留小数点后2位',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单商品行价格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_item_price
-- ----------------------------
DROP TABLE IF EXISTS `sord_item_price`;
CREATE TABLE `sord_item_price`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `order_item_id` bigint(20) NULL DEFAULT NULL COMMENT '订单商品明细id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品明细价格项名称',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单明细价格（聚合）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_item_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `sord_item_snapshot`;
CREATE TABLE `sord_item_snapshot`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `spu_id` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku id',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku编码',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku名称',
  `brand_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '品牌信息',
  `material_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '素材信息',
  `attribute_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '属性信息',
  `category_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '分类信息',
  `cost_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '成本价，计价单位：元，保留小数点后2位',
  `sale_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '销售价，计价单位：元，保留小数点后2位',
  `promotion_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '活动价（促销价），计价单位：元，保留小数点后2位',
  `distribute_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '分销价，计价单位：元，保留小数点后2位',
  `market_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '市场价，计价单位：元，保留小数点后2位',
  `batch_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '批发价，计价单位：元，保留小数点后2位',
  `settle_price` decimal(12, 2) NULL DEFAULT NULL COMMENT '结算价，计价单位：元，保留小数点后2位',
  `weight` decimal(12, 2) NULL DEFAULT NULL COMMENT '商品重量',
  `length` decimal(12, 2) NULL DEFAULT NULL COMMENT '商品长度',
  `width` decimal(12, 2) NULL DEFAULT NULL COMMENT '商品宽度',
  `height` decimal(12, 2) NULL DEFAULT NULL COMMENT '商品高度',
  `set_flag` tinyint(4) NULL DEFAULT NULL COMMENT '套餐标识：0-单品，1-套餐',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `multi_flag` tinyint(4) NULL DEFAULT NULL COMMENT '子母件标识：0-普通单品，1-子母件',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单商品明细快照' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `sord_operate_log`;
CREATE TABLE `sord_operate_log`  (
  `id` bigint(20) NOT NULL COMMENT 'ID主键',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内部订单号',
  `node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前节点',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '动作',
  `orig_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改前的值',
  `cur_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改后的值',
  `delete_flag` tinyint(4) NOT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NOT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NOT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NOT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) UNSIGNED NOT NULL COMMENT '系统字段：版本号',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '修改内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_order_logistics
-- ----------------------------
DROP TABLE IF EXISTS `sord_order_logistics`;
CREATE TABLE `sord_order_logistics`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `logistics_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流单号',
  `out_stock_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库结果订号',
  `logistics_company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流商',
  `logistics_business_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物流业务名称',
  `logistics_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流状态',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '类型,1销售单,2售后单',
  `receive_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '收货人',
  `receive_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '收货人手机',
  `receive_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '收货地址',
  `send_stock_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '发货仓',
  `send_stock_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '发货仓名称',
  `send_user` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '寄件人',
  `send_phone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '寄件人联系电话',
  `send_address` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '寄件人地址',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '物流单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_preemp_notice
-- ----------------------------
DROP TABLE IF EXISTS `sord_preemp_notice`;
CREATE TABLE `sord_preemp_notice`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `status` int(10) NULL DEFAULT NULL COMMENT '预占单状态：0-待预占，1-全部预占成功，2-部分预占成功，3-全部预占失败',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回结果',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '入参',
  `sku_quantity` int(11) NULL DEFAULT NULL COMMENT '商品种数',
  `goods_quantity` int(11) NULL DEFAULT NULL COMMENT '商品行数量',
  `success_count` int(11) NULL DEFAULT NULL COMMENT '预占成功数量',
  `failure_count` int(11) NULL DEFAULT NULL COMMENT '预占失败数量',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预占通知单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_price
-- ----------------------------
DROP TABLE IF EXISTS `sord_price`;
CREATE TABLE `sord_price`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格名称',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT 0 COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单价格项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_process_define
-- ----------------------------
DROP TABLE IF EXISTS `sord_process_define`;
CREATE TABLE `sord_process_define`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程名称',
  `process_bpmn` longblob NULL COMMENT '流程定义文件',
  `process_file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程文件名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态 0 未部署 1 已部署',
  `process_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实际流程生成id',
  `process_define_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程定义id',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程定义' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sord_promotion`;
CREATE TABLE `sord_promotion`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单来源渠道平台，如：淘宝、1688、京东、拼多多、抖音、苏宁、小米有品等',
  `outer_promotion_id` bigint(20) NULL DEFAULT NULL COMMENT '平台促销活动ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '促销类型：满减优惠，套装优惠，闪团优惠，团购优惠，预售优惠',
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '优惠金额，计价单位：元',
  `begin_time` datetime(0) NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '活动结束时间',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单促销活动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_receiver_info
-- ----------------------------
DROP TABLE IF EXISTS `sord_receiver_info`;
CREATE TABLE `sord_receiver_info`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `receiver_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `mobile` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人手机号码',
  `phone` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人电话号码',
  `zip_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人邮编',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人国籍',
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省编码',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在省份',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市编码',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在市',
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区编码',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在区',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人街道地址',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人详细地址',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `address_mask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址打码',
  `receiver_name_mask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人打码',
  `receiver_phone_mask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人手机打码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单收货人信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_related
-- ----------------------------
DROP TABLE IF EXISTS `sord_related`;
CREATE TABLE `sord_related`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `related_type` tinyint(4) NULL DEFAULT NULL COMMENT '关联类型',
  `related_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联单号（复制单、手工单、仅退款单、退货退款单、换货单等）',
  `related_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联单据的状态',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内部订单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_service_log
-- ----------------------------
DROP TABLE IF EXISTS `sord_service_log`;
CREATE TABLE `sord_service_log`  (
  `id` bigint(20) NOT NULL COMMENT 'ID主键',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型：1-预占，2-寻源，3-发货，4-收货',
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求体',
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '响应体',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '请求结果状态位：0-失败，1-成功',
  `retry_num` int(11) NULL DEFAULT 0 COMMENT '重试次数，默认值为0',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单中心与其他中心交互日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_sourcing_notice
-- ----------------------------
DROP TABLE IF EXISTS `sord_sourcing_notice`;
CREATE TABLE `sord_sourcing_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `status` int(10) NULL DEFAULT NULL COMMENT '寻源状态',
  `sku_quantity` int(11) NULL DEFAULT NULL COMMENT '商品种类数量',
  `goods_quantity` int(11) NULL DEFAULT NULL COMMENT '商品行数量',
  `success_count` int(11) NULL DEFAULT NULL COMMENT '寻源成功的商品行数量',
  `failure_count` int(11) NULL DEFAULT NULL COMMENT '寻源失败的商品行数量',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '参数',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '结果',
  `audit_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核单',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '寻源单备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 352485706440642561 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '寻源通知单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_header
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_header`;
CREATE TABLE `sord_third_header`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方订单号',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `business_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务类型 1 普通单',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `store_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺编码',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `circulation_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '流转状态 0异常 1正常',
  `failure_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流转失败原因',
  `sync_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '回写状态 0：未回写 1：回写成功 2：回写失败',
  `receiving_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '平台收货状态 0：未收货 1：已收货',
  `order_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '卖家备注',
  `buyer_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家备注/留言',
  `service_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客服备注',
  `goods_quantity` int(11) NULL DEFAULT NULL COMMENT '商品（行）总数量',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '总金额',
  `discount_flag` tinyint(4) NULL DEFAULT NULL COMMENT '是否有优惠信息 0 无 1 有',
  `total_discount` decimal(12, 2) NULL DEFAULT NULL COMMENT '优惠总金额',
  `buyer_pay_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '买家实付',
  `amount_receivable` decimal(12, 2) NULL DEFAULT NULL COMMENT '应收总金额',
  `business_discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '商家优惠金额',
  `third_discount_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '三方承担优惠金额',
  `buyer_nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家昵称',
  `order_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `pay_status` tinyint(4) NULL DEFAULT NULL COMMENT '支付状态',
  `pay_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `out_json_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '外部拉单json',
  `out_json_info_md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外部拉单jsonMd5（用于校验数据是否唯一）',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `taking_delivery_way` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提货方式 1- 门店自提    2- 物流配送',
  `sales_employee_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '销售员工名称',
  `taking_delivery_store_id` bigint(20) NULL DEFAULT NULL COMMENT '提货门店ID',
  `taking_delivery_store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提货门店名称',
  `sales_employee_id` bigint(20) NULL DEFAULT NULL COMMENT '员工ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方订单头' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_item
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_item`;
CREATE TABLE `sord_third_item`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_item_id` bigint(20) NULL DEFAULT NULL COMMENT '平台商品明细ID',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `outer_sale_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '外部销售总价',
  `outer_single_sale_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '外部销售单价',
  `set_flag` tinyint(4) NULL DEFAULT NULL COMMENT '套餐标识：0-单品，1-套餐',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `multi_flag` tinyint(4) NULL DEFAULT NULL COMMENT '子母件标识：0-普通单品，1-子母件',
  `exception_flag` tinyint(4) NULL DEFAULT NULL COMMENT '异常标识：0-正常，1-异常',
  `exception_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常单原因（转单因商品的原因异常）',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺ID',
  `main_item_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '该商品如果是赠品-标明是主商品',
  `order_item_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单商品code',
  `system_pick_flag` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '是否系统匹配营销赠品标识',
  `activity_id` bigint(20) NULL DEFAULT NULL COMMENT '指明是哪次活动赠送',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_order_item_code`(`order_item_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方商品明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_party_after_receiver_info
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_party_after_receiver_info`;
CREATE TABLE `sord_third_party_after_receiver_info`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方退货单号',
  `return_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人手机号码',
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人省编码',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在省份',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人市编码',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在市',
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人区编码',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人所在区',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人街道地址',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人详细地址',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  `receive_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人姓名',
  `receive_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人手机号码',
  `receive_province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人省编码',
  `receive_province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在省份',
  `receive_city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人市编码',
  `receive_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在市',
  `receive_district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人区编码',
  `receive_district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人所在区',
  `receive_town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人街道地址',
  `receive_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货人收件人详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方售后收货人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_party_after_sale_header
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_party_after_sale_header`;
CREATE TABLE `sord_third_party_after_sale_header`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `out_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方退货单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型 1-退款单  2- 退货退款',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `store_id` bigint(20) NULL DEFAULT NULL COMMENT '店铺id',
  `store_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺编码',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `exception_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '转单状态  0-  正常  1- 异常',
  `exception_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常原因',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家备注/留言',
  `goods_quantity` int(11) NULL DEFAULT NULL COMMENT '商品（行）总数量',
  `total_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '总金额',
  `buyer_nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家昵称',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '退货原因',
  `refund_time` datetime(0) NULL DEFAULT NULL COMMENT '退款/退货时间',
  `out_receive_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '拉单JSON信息',
  `out_receive_info_MD5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'md5加密后json串',
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款/退货阶段   0-售中  1-售后',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方售后单头' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_party_after_sale_item
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_party_after_sale_item`;
CREATE TABLE `sord_third_party_after_sale_item`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `out_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退货单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方订单号',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型 1-三方退款单  2- 三方退货退款单',
  `spu_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU编码',
  `sku_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SKU名称',
  `spu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'spu名称',
  `outer_sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '三方销售单价',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款总金额',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `spu_type` tinyint(4) NULL DEFAULT NULL COMMENT '商品类型1.实物2虚拟',
  `gift_flag` tinyint(4) NULL DEFAULT NULL COMMENT '赠品标识：0-卖品，1-赠品',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方售后单商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_party_order
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_party_order`;
CREATE TABLE `sord_third_party_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺ID',
  `channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `flow_status` tinyint(4) NULL DEFAULT NULL COMMENT '1-正常 0-暂停',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `back_write_status` tinyint(4) NULL DEFAULT NULL COMMENT '回写状态',
  `delete_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方平台订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_party_return_logistics
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_party_return_logistics`;
CREATE TABLE `sord_third_party_return_logistics`  (
  `id` bigint(20) NOT NULL,
  `logistics_company_id` bigint(60) NULL DEFAULT NULL COMMENT '退货物流公司id',
  `logistics_company_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流公司名称',
  `logistics_no` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退款/退货单号',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退款/退货单号',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '三方退货物流信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_third_receiver_info
-- ----------------------------
DROP TABLE IF EXISTS `sord_third_receiver_info`;
CREATE TABLE `sord_third_receiver_info`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `receiver_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人手机号码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人电话号码',
  `zip_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人邮编',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人国籍',
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省编码',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在省份',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市编码',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在市',
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区编码',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人所在区',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人街道地址',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人详细地址',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '系统字段：删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '系统字段：最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '系统字段：版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '三方订单收货人信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sord_warehousing_notice
-- ----------------------------
DROP TABLE IF EXISTS `sord_warehousing_notice`;
CREATE TABLE `sord_warehousing_notice`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `inner_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部退货单号',
  `inner_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内部订单号',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预占单状态：0-待入库 1-已全部入库  ',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回结果',
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标识',
  `creation_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_date` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `created_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `last_updated_by` bigint(20) NULL DEFAULT NULL COMMENT '修改人ID',
  `object_version_number` bigint(20) NULL DEFAULT NULL COMMENT '版本号',
  `outer_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台订单号',
  `outer_refund_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方退款/退货单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库通知单' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
