
# script for creating a table in a database

CREATE TABLE x27_social_dialogs (
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user_from int UNSIGNED NOT NULL DEFAULT 0,
    id_user_to int UNSIGNED NOT NULL DEFAULT 0,
    date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    has_unanswered_msg int NOT NULL DEFAULT '0',
    has_new_msg int NOT NULL DEFAULT '0',
    has_premium_male int NOT NULL DEFAULT '0',
    has_hot_male int NOT NULL DEFAULT '0',
    has_locked_msg int NOT NULL DEFAULT '0',
    is_bookmarked int NOT NULL DEFAULT '0',
    is_blocked int NOT NULL DEFAULT '0',
    is_blocked_by_male int NOT NULL DEFAULT '0',
    is_trusted int NOT NULL DEFAULT '0',
    is_active int NOT NULL DEFAULT '0',
    initiator ENUM('user','operator','ai') NOT NULL,
    has_deleted_user int NOT NULL DEFAULT '0',
    PRIMARY KEY (id)
);
