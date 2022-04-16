CREATE INDEX record_index
    ON record (updated_at ASC, record_id DESC, created_by, status);


ALTER TABLE group_member ADD INDEX index_group_member(user_id);

ALTER TABLE user ADD INDEX index_user(user_id);

ALTER TABLE group_info ADD INDEX index_group_info(group_id);

ALTER TABLE category ADD INDEX index_category(category_id);

ALTER TABLE record_item_file ADD INDEX index_item(item_id);

ALTER TABLE record_last_access ADD INDEX index_item(user_id, record_id);

ALTER TABLE session ADD INDEX index_session(value);

ALTER TABLE session ADD INDEX index_record_comment(linked_record_id);




