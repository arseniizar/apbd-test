using ApbdTest.Entities;
using Task = ApbdTest.Entities.Task;

namespace ApbdTest.Infrastructure.Repositories;

public class TeamMemberRepository : ITeamMemberRepository
{
    private readonly IUnitOfWork _uow;

    public TeamMemberRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<bool> TeamMemberExistsAsync(int teamMemberId, CancellationToken token = default)
    {
        const string query = """
                             SELECT 
                                 IIF(EXISTS (SELECT 1 FROM TeamMember
                                         WHERE TeamMember.IdTeamMember = @teamMemberId), 1, 0);   
                             """;

        var con = await _uow.GetConnectionAsync();
        await using var cmd = con.CreateCommand();
        cmd.CommandText = query;
        cmd.Transaction = _uow.Transaction;
        cmd.Parameters.AddWithValue("@teamMemberId", teamMemberId);

        var result = Convert.ToInt32(await cmd.ExecuteScalarAsync(token));

        return result == 1;
    }

    public async Task<TeamMember?> GetTeamMemberByIdAsync(int teamMemberId, CancellationToken token = default)
    {
        const string query = """
                             SELECT IdTeamMember, FirstName, LastName, Email
                             FROM TeamMember
                             WHERE IdTeamMember = @teamMemberId
                             """;
        TeamMember? teamMember = null;

        var con = await _uow.GetConnectionAsync();
        await using var cmd = con.CreateCommand();
        cmd.CommandText = query;
        cmd.Transaction = _uow.Transaction;
        cmd.Parameters.AddWithValue("@teamMemberId", teamMemberId);

        var reader = await cmd.ExecuteReaderAsync(token);
        if (!reader.HasRows)
            return teamMember;

        while (await reader.ReadAsync(token))
        {
            teamMember = new TeamMember
            {
                IdTeamMember = reader.GetInt32(0),
                FirstName = reader.GetString(1),
                LastName = reader.GetString(2),
                Email = reader.GetString(3),
            };
        }

        return teamMember;
    }

    public async Task<List<Task>?> GetTeamMemberTasksAsync(int teamMemberId, CancellationToken token = default)
    {
        const string query = """
                             Select IdTeamMember from TeamMember tm 
                                 join Task t on tm.IdTeamMember = t.IdAssignedTo 
                                                 where TeamMember.IdTeamMember = @teamMemberId
                             """;
        
        var con = await _uow.GetConnectionAsync();
        await using var cmd = con.CreateCommand();
        cmd.CommandText = query;
        cmd.Transaction = _uow.Transaction;
        cmd.Parameters.AddWithValue("@teamMemberId", teamMemberId);

        var reader = await cmd.ExecuteReaderAsync(token);
        if (!reader.HasRows)
            return [];

        var tripDictionary = new Dictionary<int, Task>();
        while (await reader.ReadAsync(token))
        {
            var tripId = reader.GetInt32(0);
            var countryId = reader.GetInt32(8);
            var countryName = reader.GetString(9);

            if (!tripDictionary.TryGetValue(tripId, out var task))
            {
                task = new Task
                {
                    
                };

                tripDictionary[tripId] = task;
            }
        }

        return tripDictionary.Values.ToList();

    }
}