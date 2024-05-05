"""create table

Revision ID: 69ab835a95ae
Revises: f9a8bcbb274e
Create Date: 2024-05-04 22:28:59.097538

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '69ab835a95ae'
down_revision: Union[str, None] = 'f9a8bcbb274e'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.create_table('weather')


def downgrade() -> None:
    op.drop_table('weather')
