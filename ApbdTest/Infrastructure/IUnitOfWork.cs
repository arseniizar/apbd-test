﻿using Microsoft.Data.SqlClient;

namespace ApbdTest.Infrastructure;

public interface IUnitOfWork
{
    public ValueTask<SqlConnection> GetConnectionAsync();
    public SqlTransaction? Transaction { get; }
    public Task BeginTransactionAsync();
    public Task CommitTransactionAsync();
    public Task RollbackTransactionAsync();
}