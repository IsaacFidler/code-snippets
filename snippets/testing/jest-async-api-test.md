---
Title: Jest Async API Test Template
Description: Template for testing async API functions with mocked fetch, including success and error paths
Tags:
  - jest
  - testing
  - async
  - api
  - typescript
---

```typescript
import { fetchServices, createService, deleteService } from "./services";

const mockFetch = jest.fn();
global.fetch = mockFetch;

describe("services API", () => {
  beforeEach(() => {
    mockFetch.mockReset();
  });

  describe("fetchServices", () => {
    it("returns paginated data on success", async () => {
      // Arrange
      const mockResponse = {
        data: [{ id: 1, name: "Test Service" }],
        total: 1,
        page: 1,
        limit: 10,
      };
      mockFetch.mockResolvedValueOnce({
        ok: true,
        json: async () => mockResponse,
      });

      // Act
      const result = await fetchServices("1", "10", "", "", "");

      // Assert
      expect(result).toEqual(mockResponse);
      expect(mockFetch).toHaveBeenCalledWith(
        expect.stringContaining("/api/services"),
      );
    });

    it("throws error on failed response", async () => {
      // Arrange
      mockFetch.mockResolvedValueOnce({ ok: false });

      // Act & Assert
      await expect(fetchServices("1", "10", "", "", "")).rejects.toThrow(
        "Failed to fetch services",
      );
    });
  });

  describe("createService", () => {
    it("creates service and returns data", async () => {
      // Arrange
      const input = {
        name: "New Service",
        description: "Test",
        owner: "team-a",
        lifecycle: "experimental" as const,
      };
      const mockCreated = { id: 1, ...input };
      mockFetch.mockResolvedValueOnce({
        ok: true,
        json: async () => ({ data: mockCreated }),
      });

      // Act
      const result = await createService(input);

      // Assert
      expect(result).toEqual(mockCreated);
      expect(mockFetch).toHaveBeenCalledWith(
        "/api/services",
        expect.objectContaining({
          method: "POST",
          body: JSON.stringify(input),
        }),
      );
    });

    it("throws with server error message", async () => {
      // Arrange
      mockFetch.mockResolvedValueOnce({
        ok: false,
        json: async () => ({ message: "Name already exists" }),
      });

      // Act & Assert
      await expect(
        createService({
          name: "Duplicate",
          description: "",
          owner: "",
          lifecycle: "experimental",
        }),
      ).rejects.toThrow("Name already exists");
    });
  });

  describe("deleteService", () => {
    it("deletes service successfully", async () => {
      // Arrange
      mockFetch.mockResolvedValueOnce({ ok: true });

      // Act & Assert
      await expect(deleteService(1)).resolves.toBeUndefined();
      expect(mockFetch).toHaveBeenCalledWith(
        "/api/services/1",
        expect.objectContaining({ method: "DELETE" }),
      );
    });
  });
});
```
