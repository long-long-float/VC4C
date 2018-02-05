/*
 * Author: doe300
 *
 * See the file "LICENSE" for the full license governing this code.
 */

#ifndef TEST_EMULATOR_H
#define TEST_EMULATOR_H

#include "cpptest.h"

class TestEmulator : public Test::Suite
{
public:
	TestEmulator();

	void testHelloWorld();
	void testHelloWorldVector();
	void testPrime();
	void testBarrier();
	void testBranches();
	void testWorkItem();
	void testBug30();
};

#endif /* TEST_EMULATOR_H */
