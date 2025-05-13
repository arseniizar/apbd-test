using ApbdTest.Entities;

namespace ApbdTest.Infrastructure.Repositories;

public interface ITeamMemberRepository
{
        public Task<bool> TeamMemberExistsAsync(int teamMemberId, CancellationToken token = default);
        public Task<TeamMember?> GetTeamMemberByIdAsync(int teamMemberId, CancellationToken token = default);
        public Task<List<ApbdTest.Entities.Task>?> GetTeamMemberTasksAsync(int teamMemberId, CancellationToken token = default);
        // public Task<bool> CreateClientTripAsync(ClientTrip clientTrip, CancellationToken token = default);
        // public Task<Client> CreateClientAsync(Client client, CancellationToken token = default);
}