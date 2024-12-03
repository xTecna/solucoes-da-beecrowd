select
    id,
    password,
    MD5 (password) as MD5
from
    account;