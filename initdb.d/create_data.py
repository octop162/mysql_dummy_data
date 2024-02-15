from faker import Faker

fake = Faker('ja_JP')
fake.seed_instance(1234)

USER_NUM = 1000
POST_NUM = 10000
COMMENT_NUM = 10000

user_uuid_list = []

sql = f"INSERT INTO `user` (`user_uuid`, `user_name`, `prefecture_no`) VALUES"
for _ in range(USER_NUM):
    user_uuid = fake.uuid4()
    user_uuid_list.append(user_uuid)
    user_name = fake.name()
    prefecture_no = fake.random_int(min=1, max=47)
    sql += f"(UNHEX(REPLACE('{user_uuid}', '-', '')), '{user_name}', {prefecture_no}),\n"
sql = sql.rstrip(',\n') + ';'
print(sql)

sql = f"INSERT INTO `post` (`title`, `content`, `post_user_uuid`) VALUES"
for _ in range(POST_NUM):
    title = fake.sentence(nb_words=2, variable_nb_words=True)
    content = fake.text(max_nb_chars=500)
    post_user_uuid = user_uuid_list[fake.random_int(min=0, max=USER_NUM-1)]
    sql += f"('{title}', '{content}', UNHEX(REPLACE('{post_user_uuid}', '-', '')) ),\n"
sql = sql.rstrip(',\n') + ';'
print(sql)

sql = f"INSERT INTO `comment` (`post_id`, `content`, `comment_user_uuid`) VALUES"
for _ in range(COMMENT_NUM):
    post_id = fake.random_int(min=1, max=POST_NUM)
    content = fake.text(max_nb_chars=500)
    comment_user_uuid = user_uuid_list[fake.random_int(min=0, max=USER_NUM-1)]
    sql += f"('{post_id}', '{content}', UNHEX(REPLACE('{comment_user_uuid}', '-', '')) ),\n"
sql = sql.rstrip(',\n') + ';'
print(sql)