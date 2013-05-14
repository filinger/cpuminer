#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=gcc

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/cpu-miner.o \
	${OBJECTDIR}/src/scrypt-jane.o \
	${OBJECTDIR}/src/util.o


# C Compiler Flags
CFLAGS=-m64 -std=gnu99 -pthread -fno-strict-aliasing

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cpuminer

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cpuminer: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cpuminer ${OBJECTFILES} ${LDLIBSOPTIONS} -lcurl -ljansson -lpthread

${OBJECTDIR}/src/cpu-miner.o: src/cpu-miner.c 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.c) -O3 -Wall -DSCRYPT_KECCAK512 -DSCRYPT_CHACHA -DSCRYPT_CHOOSE_COMPILETIME -DHAVE_CONFIG_H -std=gnu99 -pthread -fno-strict-aliasing -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cpu-miner.o src/cpu-miner.c

${OBJECTDIR}/src/scrypt-jane.o: src/scrypt-jane.c 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.c) -O3 -Wall -DSCRYPT_KECCAK512 -DSCRYPT_CHACHA -DSCRYPT_CHOOSE_COMPILETIME -DHAVE_CONFIG_H -std=gnu99 -pthread -fno-strict-aliasing -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/scrypt-jane.o src/scrypt-jane.c

${OBJECTDIR}/src/util.o: src/util.c 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.c) -O3 -Wall -DSCRYPT_KECCAK512 -DSCRYPT_CHACHA -DSCRYPT_CHOOSE_COMPILETIME -DHAVE_CONFIG_H -std=gnu99 -pthread -fno-strict-aliasing -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/util.o src/util.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cpuminer

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
