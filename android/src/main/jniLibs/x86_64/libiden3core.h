/* Code generated by cmd/cgo; DO NOT EDIT. */

/* package github.com/iden3/go_iden3_core_clib/cmd/libiden3core */


#line 1 "cgo-builtin-export-prolog"

#include <stddef.h> /* for ptrdiff_t below */

#ifndef GO_CGO_EXPORT_PROLOGUE_H
#define GO_CGO_EXPORT_PROLOGUE_H

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef struct { const char *p; ptrdiff_t n; } _GoString_;
#endif

#endif

/* Start of preamble from import "C" comments.  */


#line 5 "main.go"

#include <stddef.h>
#include <string.h>
#include <stdlib.h> // for C.free
#include <stdbool.h> // for bool
#include <time.h> // for time_t

#define IDEN_MT_HASH_SIZE 32
#define IDEN_ID_SIZE 31
#define IDEN_BJJ_SIGNATURE_SIZE 64

typedef enum
{
	IDENBIGINT_OK,
	IDENBIGINT_PARSE_FAILED,
} IDENBigIntStatus;

typedef struct _IDENBigInt {
	unsigned char* data;
	size_t data_len;
	IDENBigIntStatus status; // 0 in case of success
	char *error_msg;
} IDENBigInt;

typedef enum
{
	IDENTREEENTRY_OK,
	IDENTREEENTRY_OUT_OF_MEMORY,
	IDENTREEENTRY_CREATE_CLAIM_ERROR,
	IDENTREEENTRY_EXTRACT_CLAIM_ERROR,
} IDENtreeEntryStatus;

typedef struct _IDENTreeEntry
{
	unsigned char *data;
	size_t data_len;
	IDENtreeEntryStatus status; // 0 in case of success
	char *error_msg;
} IDENTreeEntry;

typedef enum
{
	IDENTMERKLETREE_OK,
	IDENTMERKLETREE_CREATE_ERROR,
} IDENmerkleTreeStatus;

typedef struct _IDENmerkleTree
{
	uintptr_t handle;
	IDENmerkleTreeStatus status;
	char *error_msg;
} IDENmerkleTree;

typedef enum
{
	IDENSTATUSCODE_OK,
	IDENSTATUSCODE_NIL_POINTER,
	IDENSTATUSCODE_OUT_OF_MEMORY,
	IDENSTATUSCODE_ENTRY_STATUS_INCORRECT,
	IDENSTATUSCODE_ENTRY_LENGTH_INCORRECT,
	IDENSTATUSCODE_CANT_ADD_ENTRY_TO_MERKLETREE,
	IDENSTATUSCODE_GENESIS_ID_ERROR,
	IDENSTATUSCODE_MERKLE_TREE_ERROR,
	IDENSTATUSCODE_MERKLE_TREE_HASH_ERROR,
	IDENSTATUSCODE_PROOF_GENERATION_ERROR,
	IDENSTATUSCODE_CLAIM_ERROR,
	IDENSTATUSCODE_IDEN3CREDENTIAL_PARSE_ERROR,
	IDENSTATUSCODE_GET_FIELD_SLOT_INDEX_ERROR,
} IDENstatusCode;

typedef struct _IDENstatus
{
	IDENstatusCode status;
	char *error_msg;
} IDENstatus;

typedef enum
{
	IDENPROOFSTATUS_OK,
    IDENPROOFSTATUS_MERKLETREE_INCORRECT,
    IDENPROOFSTATUS_INDEX_HASH_INCORRECT,
    IDENPROOFSTATUS_GENERATE_PROOF_ERROR,
	IDENPROOFSTATUS_OUT_OF_MEMORY,
} IDENProofStatus;

typedef struct _IDENProof
{
	IDENProofStatus status; // 0 in case of success [deprecated]
	char *error_msg; // [deprecated]
	bool existence;
	unsigned char **siblings; // array of pointers to hash — 32 byte arrays
	size_t siblings_num; // number of hashes in hashes
	unsigned char *auxNodeKey; // 32 byte array
	unsigned char *auxNodeValue; // 32 byte array
} IDENProof;

typedef enum
{
	IDENHASHSTATUS_OK,
	IDENHASHSTATUS_TREEENTRY_INCORRECT,
	IDENHASHSTATUS_GENERATE_HASH_ERROR,
} IDENHashStatus;

typedef struct _IDENHash
{
	IDENHashStatus status;
	char *error_msg;
	unsigned char *data;
	size_t data_len;
} IDENHash;

typedef enum
{
	IDENCLAIMSTATUS_OK,
	IDENCLAIMSTATUS_CREATE_ERROR,
	IDENCLAIMSTATUS_INCORRECT_HANDLE,
	IDENCLAIMSTATUS_SET_ERROR,
} IDENClaimStatus;

typedef struct _IDENClaim
{
	uintptr_t handle;
	IDENClaimStatus status;
	char *error_msg;
} IDENClaim;

typedef struct _IDENMerkleTreeHash
{
	unsigned char data[IDEN_MT_HASH_SIZE];
} IDENMerkleTreeHash;

typedef struct _IDENId
{
	unsigned char data[IDEN_ID_SIZE];
} IDENId;

typedef struct _IDENBJJSignature
{
	unsigned char data[64];
} IDENBJJSignature;

typedef struct _IDENTreeState {
	IDENMerkleTreeHash state;
	IDENMerkleTreeHash claims_root;
	IDENMerkleTreeHash revocation_root;
	IDENMerkleTreeHash root_of_roots;
} IDENTreeState;

typedef struct _IDENCircuitsClaim
{
	IDENClaim *core_claim;
	IDENProof *proof;
	IDENTreeState tree_state;
	time_t current_timestamp;
} IDENCircuitClaim;

typedef struct _IDENRevocationStatus
{
	IDENTreeState tree_state;
	IDENProof *proof;
} IDENRevocationStatus;

typedef struct _IDENQuery
{
	int slot_index;
	IDENBigInt *value;
	int operator;
} IDENQuery;

typedef struct _IDENAtomicQueryInputs
{
	IDENId id;
	IDENCircuitClaim auth_claim;
	IDENRevocationStatus auth_claim_rev_status;
	long long challenge;
	IDENBJJSignature signature;

	IDENTreeState current_tree_state;

	IDENCircuitClaim claim;
	IDENRevocationStatus revocation_status;

	IDENQuery query;
} IDENAtomicQueryInputs;

typedef struct _IDENAuthInputs
{
	IDENId id;

	IDENTreeState state;

	IDENCircuitClaim auth_claim;
	IDENProof *auth_claim_non_revocation_proof;

	IDENBJJSignature signature;
	long long challenge;
} IDENAuthInputs;

typedef enum
{
	IDENJSONRESPONSESTATUS_OK,
	IDENJSONRESPONSESTATUS_ERROR,
} IDENJsonResponseStatus;

typedef struct _IDENJsonResponse
{
	char *json_string;
	IDENJsonResponseStatus status;
	char *error_msg;
} IDENJsonResponse;

extern unsigned char **iden_alloc_hashes(int n);

extern void
iden_set_hash_idx(unsigned char **hashes, unsigned char *hash, int idx);

extern void
iden_free_hashes(unsigned char **hashes, size_t num);

unsigned char *
iden_get_hash_at_idx(unsigned char **hashes, int idx);

void *
_iden_get_ptr_by_idx(void **data, int idx);

#line 1 "cgo-generated-wrapper"


/* End of preamble from import "C" comments.  */


/* Start of boilerplate cgo prologue.  */
#line 1 "cgo-gcc-export-header-prolog"

#ifndef GO_CGO_PROLOGUE_H
#define GO_CGO_PROLOGUE_H

typedef signed char GoInt8;
typedef unsigned char GoUint8;
typedef short GoInt16;
typedef unsigned short GoUint16;
typedef int GoInt32;
typedef unsigned int GoUint32;
typedef long long GoInt64;
typedef unsigned long long GoUint64;
typedef GoInt64 GoInt;
typedef GoUint64 GoUint;
typedef __SIZE_TYPE__ GoUintptr;
typedef float GoFloat32;
typedef double GoFloat64;
typedef float _Complex GoComplex64;
typedef double _Complex GoComplex128;

/*
  static assertion to make sure the file is being used on architecture
  at least with matching size of GoInt.
*/
typedef char _check_for_64_bit_pointer_matching_GoInt[sizeof(void*)==64/8 ? 1:-1];

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef _GoString_ GoString;
#endif
typedef void *GoMap;
typedef void *GoChan;
typedef struct { void *t; void *v; } GoInterface;
typedef struct { void *data; GoInt len; GoInt cap; } GoSlice;

#endif

/* End of boilerplate cgo prologue.  */

#ifdef __cplusplus
extern "C" {
#endif


// Return pointer to IDENTreeEntry struct.
// When tree entry is not needed anymore, it should be freed with
// `IDENFreeTreeEntry` function.
extern IDENTreeEntry* IDENauthClaimTreeEntry(unsigned char* schemaHash, IDENBigInt* keyX, IDENBigInt* keyY, long long unsigned int revNonce);

// calculate hashes of claim's index and value and write them to
// indexHash and valueHash appropriately. If any of pointers is NULL,
// do not write this hash.
extern IDENstatus* IDENClaimTreeEntryHash(IDENMerkleTreeHash* indexHash, IDENMerkleTreeHash* valueHash, IDENClaim* claim);
extern IDENHash* IDENTreeEntryIndexHash(IDENTreeEntry* res);
extern void IDENFreeHash(IDENHash* res);
extern void IDENFreeTreeEntry(IDENTreeEntry* res);
extern IDENmerkleTree* IDENnewMerkleTree(int maxLevels);

// Free memory used by merkle tree
extern void IDENFreeMerkleTree(IDENmerkleTree* mt);
extern IDENstatus* IDENmerkleTreeAddClaim(IDENmerkleTree* mt, IDENTreeEntry* treeEntry);

// Return merkle tree root as 32 byte array. Should be freed after usage
// If merkle tree is in bad status, return nil
extern unsigned char* IDENmerkleTreeRoot(IDENmerkleTree* mt);
extern IDENstatus* IDENTreeRoot(IDENMerkleTreeHash* hash, IDENmerkleTree* mt);

// deprecated
extern IDENProof* IDENmerkleTreeGenerateProof(IDENmerkleTree* mt, IDENHash* indexHash);
extern IDENstatus* IDENMerkleTreeGenerateProof(IDENProof** proof, IDENmerkleTree* mt, IDENMerkleTreeHash indexHash);
extern void IDENFreeProof(IDENProof* proof);

// mtHash is a pointer to merkle tree hash — 32 bytes array
// Returns ID — pointer to 31 bytes array
extern unsigned char* IDENidGenesisFromIdenState(unsigned char* mtHash);
extern void IDENFreeStatus(IDENstatus* status);
extern IDENBigInt* IDENBigIntFromString(char* i);
extern void IDENFreeBigInt(IDENBigInt* bi);
extern IDENClaim* IDENNewClaim(unsigned char* schemaHash);
extern void IDENClaimSetValueDataInt(IDENClaim* c, IDENBigInt* slotA, IDENBigInt* slotB);
extern void IDENClaimSetIndexDataInt(IDENClaim* c, IDENBigInt* slotA, IDENBigInt* slotB);
extern void IDENClaimSetIndexID(IDENClaim* c, IDENId id);
extern void IDENClaimSetRevocationNonce(IDENClaim* c, long long unsigned int revNonce);
extern void IDENClaimSetExpirationDate(IDENClaim* c, time_t t);
extern IDENTreeEntry* IDENClaimTreeEntry(IDENClaim* c);
extern void IDENFreeClaim(IDENClaim* claim);
extern IDENJsonResponse* IDENPrepareAtomicQueryInputs(IDENAtomicQueryInputs* in);
extern IDENJsonResponse* IDENPrepareAuthInputs(IDENAuthInputs* in);
extern void IDENFreeJsonResponse(IDENJsonResponse* jsonResponse);
extern IDENstatus* IDENCalculateGenesisID(IDENId* id, IDENMerkleTreeHash clr);
extern IDENstatus* IDENHashOfHashes(IDENMerkleTreeHash* dst, IDENMerkleTreeHash** hashes, size_t n);
extern void IDENHashFromUInt64(IDENMerkleTreeHash* dst, long long unsigned int i);
extern IDENstatus* IDENJsonLDParseClaim(IDENClaim** claim, char* credential, char* schema);
extern IDENstatus* IDENJsonLDGetFieldSlotIndex(int* slotIndex, char* field, char* claimType, char* schema);

#ifdef __cplusplus
}
#endif